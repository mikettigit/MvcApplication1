namespace MvcApplication1.Objects
{
    public class Photo
    {

        public object Owner { get; set; }
        public int Id { get; set; }
        public string Img { get; set; }
        public string Description { get; set; }
        
        public Photo()
        {
        }

    }
}