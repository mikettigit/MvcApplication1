using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class ErrorsController : Controller
    {
        public ActionResult Error404(string url)
        {
            Response.StatusCode = 404;
            return View();
        }
    }
}
