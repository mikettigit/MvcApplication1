using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class PagesController : ControllerWrapper
    {
        public ActionResult Index(string param1)
        {
            string ViewFileName = "~/Views/Pages/" + param1;

            ViewData["constructor"] = constructor;

            if (Request.IsAjaxRequest())
            {
                return PartialView(ViewFileName);
            }
            else
            {
                return View(ViewFileName);
            }
        }
    }
}
