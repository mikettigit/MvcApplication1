namespace MvcApplication1.Objects
{
    public class Tag
    {

        public dynamic Owner { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }

        private string _name;
        public string Name
        {
            get
            {
                if (Type == "Price")
                {
                    return Owner.Price.ToString() + " руб";
                }
                else
                {
                    return _name;
                }
            }
            set
            {
                _name = value;
            }
        }
        
        public Tag()
        {
        }

    }
}