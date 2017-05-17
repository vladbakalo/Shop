using Shop.DataLayer.BusinessLayer;
using Shop.Repository.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop.Service.Services
{
    public class BusinessGoodRepository : IGenericRepository<BusinessGood>
    {

        public IEnumerable<BusinessGood> GetAll()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<BusinessGood> FindBy(System.Linq.Expressions.Expression<Func<BusinessGood, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public BusinessGood Get(int id)
        {
            throw new NotImplementedException();
        }

        public void AddOrUpdate(BusinessGood obj)
        {
            throw new NotImplementedException();
        }

        public void Delete(BusinessGood obj)
        {
            throw new NotImplementedException();
        }
    }
}
