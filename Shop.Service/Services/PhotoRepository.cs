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

    public class PhotoRepository : GenericRepository<Photo>
    {
        public PhotoRepository(DbContext context) : base(context) { }

    }
}
