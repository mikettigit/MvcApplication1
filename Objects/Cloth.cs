using System;
using System.Collections.Generic;
using System.Linq;
using MvcApplication1.Models;

namespace MvcApplication1.Objects
{
    static class ThicknessToHeightLaw
    {
        private static readonly Dictionary<double, double> data = new Dictionary<double, double>()
        {             
            {0.10, 3100},
            {0.15, 2850},
            {0.20, 2630},
            {0.25, 2400},
            {0.30, 2160},
            {0.35, 1960},
            {0.40, 1800},
            {0.45, 1650},
            {0.50, 1530},
            {0.55, 1400},
            {0.60, 1300},
            {0.65, 1250}
        };

        public static double GetHeightByThickness(double thickness)
        {
            var r = data.First(pair =>
                        Math.Abs(pair.Key - thickness) == data.Min(minpair => Math.Abs(minpair.Key - thickness))
                    );
            return r.Value;
        }
    }

    public class Cloth
    {
        
        public int Id { get; set; }
        public string Name { get; set; }
        public string SubName { get; set; }
        public bool Available { get; set; }

        public string Img { get; set; }
        public List<Photo> Photos { get; set; }
        
        public List<Price> Prices { get; set; }
        public double Price
        {
            get
            {
                double result = 0;
                try
                {
                    result = Prices.First(price => price.Type == ConstructorReturner.Get().Model.Name).Value;
                }
                catch { }

                return result;
            }
        }
        
        private double thickness;
        public double Thickness
        {
            set
            {
                thickness = value;
                maxHeight = ThicknessToHeightLaw.GetHeightByThickness(value);
            }
            get
            {
                return thickness;
            }
        }
        private double maxHeight;
        public double MaxHeight
        {
            set
            {
                maxHeight = value;
            }
            get
            {
                return maxHeight;
            }
        }

        public string Description { get; set; }
        public List<Tag> Tags { get; set; }
        
        public Cloth()
        {
            Photos = new List<Photo>();
            Tags = new List<Tag>();
            Prices = new List<Price>();
        }

    }
}