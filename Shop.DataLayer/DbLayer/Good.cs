namespace Shop.DataLayer.DbLayer
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Good")]
    public partial class Good
    {
        public Good()
        {
            Photos = new HashSet<Photo>();
        }

        public int GoodId { get; set; }

        [Required]
        [StringLength(100)]
        public string GoodName { get; set; }

        public int? ManufacturerId { get; set; }

        [Column(TypeName = "money")]
        public decimal PriceUsd { get; set; }

        public int Rest { get; set; }

        public virtual Manufacturer Manufacturer { get; set; }

        public virtual ICollection<Photo> Photos { get; set; }
    }
}
