using System;
using System.Collections.Generic;
using System.Linq;
using MvcApplication1.Objects;
using MvcApplication1.Helpers;
using System.Configuration;
using System.Data.SqlClient;

namespace MvcApplication1.Models
{
    public class CompactModel
    {
        public PaletteModel palette { get { return PaletteReturner.Get(); } }

        public string Name = "compact";
        public string Unit = "м ширины";

        public DriverSide DriverSide { get; set; }

        public double MagnetPrice { get; set; }
        public bool UseMagnet { get; set; }

        public double MinPayment { get; set; }
        private double MinPriceWidth { get; set; }
        public string MinPriceWidthWarning
        {
            get
            {
                return "Для шторы шириной менее " + MinPriceWidth + " м оплата производится как за " + MinPriceWidth + " м";
            }
        }
        public double Height { get; set; }
        public double Width { get; set; }
        public double PriceDimention
        {
            get
            {
                return Math.Round(Width/1000, 2);
            }
        }
        public double Amount
        {
            get
            {
                double WidthForCalculation = Math.Max(PriceDimention, MinPriceWidth);
                return Math.Round(WidthForCalculation * palette.SelectedCloth.Price, 2) + (UseMagnet ? MagnetPrice : 0);
            }
        }
        public string GetHash(Cloth cloth)
        {
            return "?t=" + Name +
                       "&cl=" + cloth.Id.ToString() +
                       "&ds=" + DriverSide.ToString() +
                       "&w=" + Width.ToString() +
                       "&h=" + Height.ToString() +
                       "&mag=" + UseMagnet.ToString();
        }
        public string Hash
        {
            get
            {
                return GetHash(palette.SelectedCloth);
            }
        }

        public CompactModel()
        {
            DriverSide = DriverSide.right;

            MinPayment = Convert.ToDouble(ConfigurationManager.AppSettings["MinPayment"]);
            MinPriceWidth = 0.7;
            MagnetPrice = 100;
            UseMagnet = true;
            Height = Convert.ToDouble(ConfigurationManager.AppSettings["DefaultHeight"]);
            Width = Convert.ToDouble(ConfigurationManager.AppSettings["DefaultWidth"]);
        }

        /////////////////

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
        }

        public void SetWidth(double width)
        {
            double maxVal = 1800;
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
            if (PriceDimention < MinPriceWidth)
            {
                throw new System.ArithmeticException(MinPriceWidthWarning);
            }
        }

    }

    public static class CompactReturner
    {
        public static CompactModel Get()
        {
            CompactModel result = null;

            SessionManager sm = new SessionManager();

            object CachedCompactModel = sm.Get("CompactModel");
            if (CachedCompactModel != null)
            {
                result = CachedCompactModel as CompactModel;
            }
            else
            {
                result = new CompactModel();

                sm.Set("CompactModel", result);
            }

            return result;
        }
    }

}