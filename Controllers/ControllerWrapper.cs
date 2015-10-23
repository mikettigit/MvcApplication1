using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MvcApplication1.Models;
using MvcApplication1.Objects;
using System.Web.Script.Serialization;
using System.Web;
using System.Collections.Specialized;
using System.Web.Routing;

namespace MvcApplication1.Controllers
{
    public class ControllerWrapper : Controller
    {
        public ConstructorModel constructor { get { return ConstructorReturner.Get(); } }
        public PaletteModel palette { get { return PaletteReturner.Get(); } }

        protected override void Initialize(System.Web.Routing.RequestContext requestContext)
        {
            base.Initialize(requestContext);
            ParseQueryString(requestContext.HttpContext.Request.Url.Query, constructor, palette);
        }

        public void ParseQueryString(string QueryString, ConstructorModel _constructor, PaletteModel _palette)
        {
            NameValueCollection qscoll = HttpUtility.ParseQueryString(QueryString);
            if (qscoll.Count > 0)
            {
                string t = qscoll["t"];
                if (t != null)
                {
                    try
                    {
                        _constructor.SetCurrentModel(t);
                    }
                    catch { }
                }

                string cl = qscoll["cl"];
                if (cl != null) {
                    try
                    {
                        _palette.SetClothById(Convert.ToInt32(cl));
                        _constructor.Model.SetHeight(constructor.Model.Height);
                    }
                    catch { }
                }

                string sh = qscoll["sh"];
                if (sh != null)
                {
                    try
                    {
                        _constructor.Model.SetShapeById(Convert.ToInt32(sh));
                    }
                    catch { }
                }

                string ds = qscoll["ds"];
                if (ds != null)
                {
                    try
                    {
                        _constructor.Model.DriverSide = (DriverSide)Enum.Parse(typeof(DriverSide), ds, true);
                    }
                    catch { }
                }

                string w = qscoll["w"];
                if (w != null)
                {
                    try
                    {
                        _constructor.Model.SetWidth(Convert.ToDouble(w));
                    }
                    catch { }
                }

                string h = qscoll["h"];
                if (h != null)
                {
                    try
                    {
                        _constructor.Model.SetHeight(Convert.ToDouble(h));
                    }
                    catch { }
                }

                string mag = qscoll["mag"];
                if (mag != null)
                {
                    try
                    {
                        _constructor.Model.UseMagnet = Convert.ToBoolean(mag);
                    }
                    catch { }
                }
            }
        }
    }
}
