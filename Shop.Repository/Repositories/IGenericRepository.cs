using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop.Repository.Repositories
{
    public interface IGenericRepository<T>
    {
        IEnumerable<T> GetAll();
        //IEnumerable<T> GetChild(int id);
        IEnumerable<T> FindBy(System.Linq.Expressions.Expression<Func<T, bool>> predicate);
        T Get(int id);
        //void Save(T obj);
        void AddOrUpdate(T obj);
        void Delete(T obj);

    }
}
