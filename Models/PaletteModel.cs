using System;
using System.Collections.Generic;
using System.Linq;
using MvcApplication1.Objects;
using MvcApplication1.Helpers;
using System.Configuration;
using System.Data.SqlClient;

namespace MvcApplication1.Models
{
    public class PaletteModel
    {
        public string SelectedTagType { get; set; }
        public string SelectedTagName { get; set; }

        public List<Cloth> AvailableClothes { get; set; }
        public Cloth SelectedCloth { get; set; }
        
        public PaletteModel()
        {
            SelectedTagType = ConfigurationManager.AppSettings["DefaultTagType"];
            SelectedTagName = null;

            AvailableClothes = GetAvailableClothes();
            SelectedCloth = GetClothById(ConfigurationManager.AppSettings["DefaultClothId"]);
        }

        /////////////////

        private void CompleteClothPrices(List<Cloth> clothes)
        {
            string query = String.Format(
            @"SELECT
                *
            FROM
                Clothes_Prices 
            WHERE
                ClothId IN ({0})",
            String.Join(",", clothes.Select(cloth => cloth.Id)));

            SqlDataReader reader = DBHelper.GetDataReader(query);
            while (reader.Read())
            {
                Cloth clothWithCurrentId = clothes.First(cloth => cloth.Id.Equals(reader["ClothId"]));
                Price CurrentPrice = DBHelper.ReaderToObject<Price>(reader);
                CurrentPrice.Owner = clothWithCurrentId;
                clothWithCurrentId.Prices.Add(CurrentPrice);
            }
            reader.Close();
        }

        private void CompleteClothTags(List<Cloth> clothes)
        {
            string query = String.Format(
            @"SELECT
                *
            FROM
                Clothes_Tags 
            WHERE
                ClothId IN ({0})",
            String.Join(",", clothes.Select(cloth => cloth.Id)));

            SqlDataReader reader = DBHelper.GetDataReader(query);
            while (reader.Read())
            {
                Cloth clothWithCurrentId = clothes.First(cloth => cloth.Id.Equals(reader["ClothId"]));
                Tag CurrentTag = DBHelper.ReaderToObject<Tag>(reader);
                CurrentTag.Owner = clothWithCurrentId;
                clothWithCurrentId.Tags.Add(CurrentTag);
            }
            reader.Close();

            clothes.ForEach(cloth =>
                cloth.Tags.Add(new Tag() { Name = cloth.Name, Owner = cloth, Type = "Name", Description = "Название" })
            );
            clothes.ForEach(cloth =>
                cloth.Tags.Add(new Tag() { Name = "", Owner = cloth, Type = "Price", Description = "Цена" })
            );
        }

        private void CompleteClothPhotos(List<Cloth> clothes)
        {
            string query = String.Format(
            @"SELECT
                Photos.*,
                Clothes_Photos.ClothId
            FROM
                Clothes_Photos 
                    INNER JOIN Photos
                        ON 
                            Clothes_Photos.PhotoId = Photos.Id
            WHERE
                ClothId IN ({0})",
            String.Join(",", clothes.Select(cloth => cloth.Id)));

            SqlDataReader reader = DBHelper.GetDataReader(query);
            while (reader.Read())
            {
                Cloth clothWithCurrentId = clothes.First(cloth => cloth.Id.Equals(reader["ClothId"]));
                Photo CurrentPhoto = DBHelper.ReaderToObject<Photo>(reader);
                CurrentPhoto.Owner = clothWithCurrentId;
                clothWithCurrentId.Photos.Add(CurrentPhoto);
            }
            reader.Close();
        }

        /////////////////

        private Cloth GetClothById(string id)
        {
            string query = String.Format(
            @"SELECT
                * 
            FROM
                Clothes
            WHERE
                Id = {0}",
            id);
            Cloth result = DBHelper.GetDBObject<Cloth>(query);

            List<Cloth> list = new List<Cloth>() { result };
            CompleteClothPrices(list);
            CompleteClothTags(list);
            CompleteClothPhotos(list);

            return result;
        }

        private List<Cloth> GetAvailableClothes()
        {
            string query = 
            @"SELECT
                *
            FROM
                Clothes
            WHERE
                Available = 1";
            List<Cloth> result = DBHelper.GetDBObjectList<Cloth>(query);

            CompleteClothPrices(result);
            CompleteClothTags(result);
            CompleteClothPhotos(result);

            return result;
        }

        /////////////////

        public void SetClothById(int id)
        {
            SelectedCloth = AvailableClothes.First(cloth => cloth.Id == id);
        }

    }

    public static class PaletteReturner
    {
        public static PaletteModel Get()
        {
            PaletteModel result = null;

            SessionManager sm = new SessionManager();

            object CachedClothPaletteModel = sm.Get("ClothPaletteModel");
            if (CachedClothPaletteModel != null)
            {
                result = CachedClothPaletteModel as PaletteModel;
            }
            else
            {
                result = new PaletteModel();

                sm.Set("ClothPaletteModel", result);
            }

            return result;
        }
    }

}