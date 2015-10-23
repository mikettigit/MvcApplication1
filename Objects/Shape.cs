using System.Collections.Generic;

namespace MvcApplication1.Objects
{
    public class Shape
    {
        
        public int Id { get; set; }
        public string Name { get; set; }
        public bool Available { get; set; }

        public string Img { get; set; }
        public string Description { get; set; }
        
        public Shape()
        {
        }

    }
}