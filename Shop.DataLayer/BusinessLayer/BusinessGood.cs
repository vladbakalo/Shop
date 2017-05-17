using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop.DataLayer.BusinessLayer
{
    public class BusinessGood
    {
        public int GoodId { get; set; }

        public string GoodName { get; set; }

        public int? ManufacturerId { get; set; }
        public string ManufacturerName { get; set; }

        public decimal PriceUsd { get; set; }

        public int Rest { get; set; }
        public int? PhotoId { get; set; }
        public string PathPhoto { get; set; }
    }
}
