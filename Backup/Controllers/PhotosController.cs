using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MvcApplication1.Objects;
namespace MvcApplication1.Controllers
{
    public class PhotosController : ControllerWrapper
    {
        public ActionResult Index()
        {
            List<Photo> AllPhotos = new List<Photo>();
            palette.AvailableClothes.ForEach(cloth =>
                cloth.Photos.ForEach(photo =>
                    AllPhotos.Add(photo)
                )
            );

            List<Photo> Photos = new List<Photo>();
            Photos = AllPhotos.GroupBy(photo => photo.Id, (key, group) => group.First())
                              .OrderBy(photo => ((Cloth)photo.Owner).Name)
                              .ToList();

            ViewData["constructor"] = constructor;
            ViewData["Photos"] = Photos;

            if (Request.IsAjaxRequest())
            {
                return PartialView();
            }
            else
            {
                return View();
            }
        }
    }
}