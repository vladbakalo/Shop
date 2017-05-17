namespace Shop.DataLayer.DbLayer
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Manufacturer")]
    public partial class Manufacturer
    {
        public Manufacturer()
        {
            Goods = new HashSet<Good>();
        }

        public int ManufacturerId { get; set; }

        [Required]
        [StringLength(100)]
        public string ManufacturerName { get; set; }

        public virtual ICollection<Good> Goods { get; set; }
    }
}
