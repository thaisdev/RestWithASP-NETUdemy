using System.Collections.Generic;
using RestWithASPNETUdemy.Model.Base;

namespace RestWithASPNETUdemy.Business.Generic
{
    public interface IRepository<T> where T : BaseEntity
    {
        T Create(T item);
        T FindById(long id);
        List<T> FindAll();
        T Update(T item);
        void Delete(long id);

        List<T> FindWithPagedSearch(string query);
        int GetCount(string query);
    }
}