using Shop.DataLayer.DbLayer;
using Shop.Repository.Repositories;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop.Service.Services
{
    public class GoodRepository : GenericRepository<Good>
    {
        public GoodRepository(DbContext context) : base(context) { }

    }

    public static class GoodRepositoryExt
    {
        public static IEnumerable<Good> GetByManufacturer(this IGenericRepository<Good> good, int id)
        {
            return good.GetAll().Where(p => p.ManufacturerId == id);
        }
    }
}
