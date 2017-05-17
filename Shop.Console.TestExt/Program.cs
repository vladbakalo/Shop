using Shop.DataLayer.BusinessLayer;
using Shop.DataLayer.DbLayer;
using Shop.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop.Console.TestExt
{
    class Program
    {
        static void Main(string[] args)
        {
            ShopContext context = new ShopContext();

            var query = from g in context.Goods
                        join p in context.Photos on g.GoodId equals p.GoodId into grp
                        from gr in grp.DefaultIfEmpty()
                        where gr.PhotoId == new int?() || (gr.PhotoId>0 && gr.IsMain)
                        select new BusinessGood
                              {
                                  GoodId = g.GoodId,
                                  GoodName = g.GoodName,
                                  ManufacturerId = g.ManufacturerId,
                                  ManufacturerName = g.Manufacturer.ManufacturerName,
                                  PriceUsd = g.PriceUsd,
                                  Rest = g.Rest,
                                  PhotoId = gr.PhotoId,
                                  PathPhoto = gr.PathPhoto
                              };
            foreach (var item in query)
            {
                System.Console.WriteLine("PhotoId {0}, name {1}. photo = {2}", item.PhotoId, item.GoodName, item.PathPhoto);
            }


        }
    }
}
