using Shop.DataLayer.BusinessLayer;
using Shop.DataLayer.DbLayer;
using Shop.Repository.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop.UI.Models
{
    public class ViewModelGoodRepository
    {
        IGenericRepository<Good> repoGood;
        IGenericRepository<Photo> repoPhoto;
        public ViewModelGoodRepository(IGenericRepository<Good> _repoGood, IGenericRepository<Photo> _repoPhoto)
        {
            repoGood = _repoGood;
            repoPhoto = _repoPhoto;
        }
        public IEnumerable<ViewModelGood> GetAll()
        {
            var query = from g in repoGood.GetAll().AsQueryable()
                        join p in repoPhoto.GetAll().AsQueryable() on g.GoodId equals p.GoodId into grp
                        from gr in grp.DefaultIfEmpty()
                        where gr.PhotoId == new int?() || (gr.PhotoId > 0 && gr.IsMain)
                        select new ViewModelGood
                        {
                            GoodId = g.GoodId,
                            GoodName = g.GoodName,
                            ManufacturerName = g.Manufacturer.ManufacturerName,
                            PriceUsd = g.PriceUsd,
                            Rest = g.Rest,
                            PhotoId = gr.PhotoId,
                            PhotoPath = gr.PathPhoto
                        };
            return query;
        }
    }
}