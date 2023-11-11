using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Coffee_web.Models
{
    public class orders
    {
        public Nullable<int> id { get; set; } 
        public Nullable<double> price { get; set; }
        public string tick { get; set; }
        public string IsType { get; set; }  
        public Nullable<int> num { get; set; }  
        public Nullable<int> id_product { get; set; }
        
    }
}