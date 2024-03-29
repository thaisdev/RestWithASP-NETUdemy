using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using RestWithASPNETUdemy.Model.Base;
using RestWithASPNETUdemy.Model.Context;

namespace RestWithASPNETUdemy.Business.Generic
{
    public class GenericRepository<T> : IRepository<T> where T : BaseEntity
    {
        protected readonly MySQLContext _context;
        private DbSet<T> dataset;

        public GenericRepository(MySQLContext context)
        {
            _context = context;
            dataset = _context.Set<T>();
        }
        
        public T Create(T item)
        {
            try
            {
                dataset.Add(item);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return item;
        }

        public T FindById(long id)
        {
            return dataset.SingleOrDefault(i => i.Id.Equals(id));
        }

        public List<T> FindAll()
        {
            return dataset.ToList();
        }

        public T Update(T item)
        {
            if (!Exists(item.Id)) return null;

            var result = dataset.SingleOrDefault(b => b.Id == item.Id);
            if (result != null)
            {
                try
                {
                    _context.Entry(result).CurrentValues.SetValues(item);
                    _context.SaveChanges();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            return result;
        }

        public void Delete(long id)
        {
            var result = dataset.SingleOrDefault(i => i.Id.Equals(id));
            try
            {
                if (result != null) dataset.Remove(result);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<T> FindWithPagedSearch(string query)
        {
            return dataset.FromSql<T>(query).ToList();
        }
        
        public int GetCount(string query)
        {
            var result = "";
            using (var connection = _context.Database.GetDbConnection())
            {
                connection.Open();

                using (var command = connection.CreateCommand())
                {
                    command.CommandText = query;
                    result = command.ExecuteScalar().ToString();
                }
            }

            return Int32.Parse(result);
        }

        private bool Exists(long? id)
        {
            return dataset.Any(b => b.Id.Equals(id));
        }
    }
}