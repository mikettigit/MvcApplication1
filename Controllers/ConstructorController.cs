using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MvcApplication1.Models;
using MvcApplication1.Objects;
using System.Web.Script.Serialization;
using System.Web;
using System.Collections.Specialized;
using MvcApplication1.Helpers;

namespace MvcApplication1.Controllers
{
    public class ConstructorController : ControllerWrapper
    {
        private string GetViewPath()
        {
            return GetViewPath(constructor.Model.Name);
        }

        private string GetViewPath(string ModelName)
        {
            return "~/Views/Constructor/" + (ModelName == null ? constructor.Model.Name : ModelName) + "/";
        }

        /////////////////

        public ActionResult Index()
        {
            ViewData["constructor"] = constructor;
            ViewData["palette"] = palette;

            string ViewFileName = GetViewPath() + "Index.cshtml";

            if (Request.IsAjaxRequest())
            {
                return PartialView(ViewFileName);
            }
            else
            {
                return View(ViewFileName);
            }
        }

        public ActionResult Measurement(string param1)
        {
            ViewData["palette"] = palette;

            string ViewFileName = GetViewPath(param1) + (constructor.Model.Name == "lux" ? "Installation.cshtml" : "Measurement.cshtml");

            if (Request.IsAjaxRequest())
            {
                return PartialView(ViewFileName);
            }
            else
            {
                return View(ViewFileName);
            }
        }

        public ActionResult Installation(string param1)
        {
            string ViewFileName = GetViewPath(param1) + "Installation.cshtml";

            if (Request.IsAjaxRequest())
            {
                return PartialView(ViewFileName);
            }
            else
            {
                return View(ViewFileName);
            }
        }

        /////////////////

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateDriverSide(DriverSide SelectedDriverSide)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                constructor.Model.DriverSide = SelectedDriverSide;

                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
            }

            jm.Object = ConstructorToJson(constructor);

            Response.Cache.SetExpires(new DateTime(1980, 11, 11));
            Response.Cache.SetLastModified(DateTime.Parse("1/1/2001 00:00:01AM"));
            Response.Cache.SetNoStore();

            return Json(jm);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateMagnet(bool SelectedUseMagnet)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                constructor.Model.UseMagnet = SelectedUseMagnet;

                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
            }

            jm.Object = ConstructorToJson(constructor);

            Response.Cache.SetExpires(new DateTime(1980, 11, 11));
            Response.Cache.SetLastModified(DateTime.Parse("1/1/2001 00:00:01AM"));
            Response.Cache.SetNoStore();

            return Json(jm);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateCloth(int SelectedClothID)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                palette.SetClothById(SelectedClothID);
                constructor.Model.SetHeight(constructor.Model.Height);

                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
            }

            jm.Object = ConstructorToJson(constructor);

            Response.Cache.SetExpires(new DateTime(1980, 11, 11));
            Response.Cache.SetLastModified(DateTime.Parse("1/1/2001 00:00:01AM"));
            Response.Cache.SetNoStore();

            return Json(jm);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateShape(int SelectedShapeID)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                constructor.Model.SetShapeById(SelectedShapeID);

                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
            }

            jm.Object = ConstructorToJson(constructor);

            Response.Cache.SetExpires(new DateTime(1980, 11, 11));
            Response.Cache.SetLastModified(DateTime.Parse("1/1/2001 00:00:01AM"));
            Response.Cache.SetNoStore();

            return Json(jm);
        }
        
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateHeight(double Height)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                constructor.Model.SetHeight(Height);

                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
                if (ex is System.ArgumentException)
                {
                    jm.HelpURL = "/Constructor/Measurement/#height";
                }
            }

            jm.Object = ConstructorToJson(constructor);

            Response.Cache.SetExpires(new DateTime(1980, 11, 11));
            Response.Cache.SetLastModified(DateTime.Parse("1/1/2001 00:00:01AM"));
            Response.Cache.SetNoStore();

            return Json(jm);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateWidth(double Width)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                constructor.Model.SetWidth(Width);

                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
                if (ex is System.ArgumentException)
                {
                    jm.HelpURL = "/Constructor/Measurement/#width";
                }
            }

            jm.Object = ConstructorToJson(constructor);

            Response.Cache.SetExpires(new DateTime(1980, 11, 11));
            Response.Cache.SetLastModified(DateTime.Parse("1/1/2001 00:00:01AM"));
            Response.Cache.SetNoStore();

            return Json(jm);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult GetObjectByHash(string hash)
        {
            JsonMessage jm = new JsonMessage();

            try
            {
                if (hash == "" || hash == null)
                {
                    jm.Object = ConstructorToJson(constructor);
                }
                else
                {
                    ConstructorModel _constructor = new ConstructorModel();
                    PaletteModel _palette = new PaletteModel();
                    ParseQueryString(hash, _constructor, _palette);
                    jm.Object = ConstructorToJson(_constructor, _palette);
                }
                jm.Result = true;
                jm.Message = "Операция выполнена успешно";
            }
            catch (Exception ex)
            {
                jm.Result = false;
                jm.Message = ex.Message;
            }

            return Json(jm);
        }

        private string ConstructorToJson(ConstructorModel _constructor)
        {
            return ConstructorToJson(_constructor, _constructor.Model.palette);
        }

        private string ConstructorToJson(ConstructorModel _constructor, PaletteModel _palette)
        {
            Dictionary<string, string> dictionary = new Dictionary<string, string>();
            dictionary.Add("width", _constructor.Model.Width.ToString());
            dictionary.Add("height", _constructor.Model.Height.ToString());
            dictionary.Add("price_dimention", _constructor.Model.PriceDimention.ToString());
            dictionary.Add("amount", _constructor.Model.Amount.ToString());
            dictionary.Add("cloth_name", _palette.SelectedCloth.Name);
            dictionary.Add("cloth_subname", _palette.SelectedCloth.SubName);
            dictionary.Add("cloth_img", _palette.SelectedCloth.Img);
            dictionary.Add("min_payment", _constructor.Model.MinPayment.ToString());
            dictionary.Add("hash", _constructor.Model.Hash.ToString());

            JavaScriptSerializer serializer = new JavaScriptSerializer();

            return serializer.Serialize(dictionary);
        }
    }
}
