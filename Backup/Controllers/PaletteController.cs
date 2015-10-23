using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MvcApplication1.Models;
using MvcApplication1.Objects;
using System.Web.Script.Serialization;
using System.Web;
using System.Collections.Specialized;

namespace MvcApplication1.Controllers
{
    public class PaletteController : ControllerWrapper
    {
        public ActionResult Index(string param1, string param2)
        {
            if (param1 != null)
            {
                palette.SelectedTagType = param1;
            }

            palette.SelectedTagName = param2;
            
            List<Tag> AllTags = new List<Tag>();
            palette.AvailableClothes.ForEach(cloth =>
                cloth.Tags.ForEach(tag =>
                    AllTags.Add(tag)
                )
            );

            List<Tag> Tags = AllTags.Where(tag => tag.Type == palette.SelectedTagType)
                                    .OrderByDescending(tag => (tag.Name == palette.SelectedTagName))
                                    .ThenBy(tag => tag.Name)
                                    .ThenBy(tag => ((Cloth)tag.Owner).Name)
                                    .ThenBy(tag => ((Cloth)tag.Owner).SubName)
                                    .ToList();

            List<Cloth> Clothes = Tags.Select(tag => tag.Owner as Cloth)
                                        .Distinct()
                                        .ToList();

            List<Cloth> UntagedClothes = palette.AvailableClothes
                                                    .Where(cloth => !Clothes.Contains(cloth))
                                                    .OrderBy(cloth => cloth.Name)
                                                    .ThenBy(cloth => cloth.SubName)
                                                    .ToList();

            List<Tag> TagTypes = AllTags.GroupBy(tag => tag.Type, (key, group) => new Tag() { Type = group.First().Type, Description = group.First().Description })
                                        .OrderBy(tag => (tag.Type == "Blackout"))
                                        .ThenBy(tag => tag.Description)
                                        .ToList();

            ViewData["constructor"] = constructor;
            ViewData["Tags"] = Tags;
            ViewData["UntagedItems"] = UntagedClothes;
            ViewData["TagTypes"] = TagTypes;
            ViewData["SelectedTagType"] = palette.SelectedTagType;
            ViewData["Unit"] = constructor.Model.Unit;
            
            if (Request.IsAjaxRequest())
            {
                return PartialView();
            }
            else
            {
                return View();
            }
        }

        public ActionResult Cloth(string param1)
        {
            Cloth Cloth = palette.SelectedCloth;
            if (param1 != null)
            {
                try
                {
                    int ClothId = Convert.ToInt32(param1);
                    Cloth = palette.AvailableClothes.First(availableCloth => availableCloth.Id == ClothId);
                }
                catch
                {
                }
            }

            List<Cloth> SameNameClothes = palette.AvailableClothes.Where(cloth => cloth.Name == Cloth.Name).ToList();

            List<Cloth> Clothes = SameNameClothes.Where(cloth => cloth.Id != Cloth.Id).ToList();

            List<Photo> Photos = new List<Photo>();
            SameNameClothes.ForEach(cloth =>
                cloth.Photos.ForEach(photo =>
                    Photos.Add(photo)
                )
            );
            Photos = Photos.GroupBy(photo => photo.Id, (key, group) => group.First()).ToList();

            ViewData["constructor"] = constructor;
            ViewData["Cloth"] = Cloth;
            ViewData["Clothes"] = Clothes;
            ViewData["Photos"] = Photos;
            ViewData["Hash"] = constructor.Model.GetHash(Cloth);
            ViewData["Unit"] = constructor.Model.Unit;

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
