using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop.UI.Models
{
    public class ViewModelGood
    {

        public int GoodId { get; set; }
        public string GoodName { get; set; }

        public string ManufacturerName { get; set; }

        public decimal PriceUsd { get; set; }

        public int Rest { get; set; }

        public int? PhotoId { get; set; }
        public string PhotoPath { get; set; }
    }
}