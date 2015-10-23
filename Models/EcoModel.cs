using System;
using System.Collections.Generic;
using System.Linq;
using MvcApplication1.Objects;
using MvcApplication1.Helpers;
using System.Configuration;
using System.Data.SqlClient;

namespace MvcApplication1.Models
{
    public class EcoModel
    {
        public PaletteModel palette { 
            get 
            { 
                return PaletteReturner.Get(); 
            }
        }

        public string Name = "eco";
        public string Unit = "м²";

        public double MinPayment { get; set; }
        public List<Shape> AvailableShapes { get; set; }
        public Shape SelectedShape { get; set; }
        public DriverSide DriverSide { get; set; }
        private double MinPriceArea { get; set; }
        public string MinPriceAreaWarning 
        {
            get
            {
                return "Для шторы площадью менее " + MinPriceArea + " м² оплата производится как за " + MinPriceArea + " м²";
            }
        }
        public double Height { get; set; }
        public double Width { get; set; }
        public double PriceDimention
        {
            get
            {
                return Math.Round(Height/1000 * Width/1000, 2);
            }
        }
        public double Amount
        {
            get
            {
                double AreaForCalculation = Math.Max(PriceDimention, MinPriceArea);
                return Math.Round(AreaForCalculation * palette.SelectedCloth.Price, 2);
            }
        }
        public string GetHash(Cloth cloth)
        {
            return "?t=" + Name +
                      "&cl=" + cloth.Id.ToString() +
                      "&sh=" + SelectedShape.Id.ToString() +
                      "&ds=" + DriverSide.ToString() +
                      "&w=" + Width.ToString() +
                      "&h=" + Height.ToString();
        }
        public string Hash
        {
            get
            {
                return GetHash(palette.SelectedCloth);
            }
        }
        
        public EcoModel()
        {
            AvailableShapes = GetAvailableShapes();
            SelectedShape = GetShapeById(ConfigurationManager.AppSettings["DefaultShapeId"]);

            DriverSide = DriverSide.right;

            MinPayment = Convert.ToDouble(ConfigurationManager.AppSettings["MinPayment"]);
            MinPriceArea = 0.7;
            Height = Convert.ToDouble(ConfigurationManager.AppSettings["DefaultHeight"]);
            Width = Convert.ToDouble(ConfigurationManager.AppSettings["DefaultWidth"]);
        }

        /////////////////

        private Shape GetShapeById(string id)
        {
            string query = String.Format(
            @"SELECT
                * 
            FROM
                Shapes
            WHERE
                Id = {0}",
            id);
            Shape result = DBHelper.GetDBObject<Shape>(query);

            List<Shape> list = new List<Shape>() { result };

            return result;
        }

        private List<Shape> GetAvailableShapes()
        {
            string query =
            @"SELECT
                *
            FROM
                Shapes
            WHERE
                Available = 1";
            List<Shape> result = DBHelper.GetDBObjectList<Shape>(query);

            return result;
        }

        /////////////////

        public void SetShapeById(int id)
        {
            SelectedShape = AvailableShapes.First(shape => shape.Id == id);
        }

        public void SetHeight(double height)
        {
            double maxVal = palette.SelectedCloth.MaxHeight;
            if (height > maxVal)
            {
                Height = maxVal;
                throw new System.ArgumentException("Для ткани " + palette.SelectedCloth.Name + " высота не должна быть больше " + maxVal + " мм");
            }

            double minVal = 200;
            if (height < minVal)
            {
                Height = minVal;
                throw new System.ArgumentException("Высота не должна быть меньше " + minVal + " мм");
            }

            Height = height;
            if (PriceDimention < MinPriceArea)
            {
                throw new System.ArithmeticException(MinPriceAreaWarning);
            }
        }

        public void SetWidth(double width)
        {
            double maxVal = 2000;
            if (width > maxVal) {
                Width = maxVal;
                throw new System.ArgumentException("Ширина не должна быть больше " + maxVal + " мм");
            }

            double minVal = 200;
            if (width < minVal) {
                Width = minVal;
                throw new System.ArgumentException("Ширина не должна быть меньше " + minVal + " мм");
            }

            Width = width;
            if (PriceDimention < MinPriceArea)
            {
                throw new System.ArithmeticException(MinPriceAreaWarning);
            }
        }

    }

    public static class EcoReturner
    {
        public static EcoModel Get()
        {
            EcoModel result = null;

            SessionManager sm = new SessionManager();

            object CachedEcoModel = sm.Get("EcoModel");
            if (CachedEcoModel != null)
            {
                result = CachedEcoModel as EcoModel;
            }
            else
            {
                result = new EcoModel();

                sm.Set("EcoModel", result);
            }

            return result;
        }
    }

}