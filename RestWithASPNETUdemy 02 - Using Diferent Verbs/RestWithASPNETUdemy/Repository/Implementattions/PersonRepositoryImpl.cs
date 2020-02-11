using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Model.Context;

namespace RestWithASPNETUdemy.Repository.Implementattions
{
    public class PersonRepositoryImpl : IPersonRepository
    {
        private MySQLContext _context;

        public PersonRepositoryImpl(MySQLContext context)
        {
            _context = context;
        }
        
        public Person Create(Person person)
        {
            try
            {
                _context.Add(person);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return person;
        }

        public Person FindById(long id)
        {
            return _context.persons.SingleOrDefault(p => p.Id.Equals(id));
        }

        public List<Person> FindAll()
        {
            return _context.persons.ToList();
        }

        public Person Update(Person person)
        {
            if (!Exist(person.Id)) return null;

            var result = _context.persons.SingleOrDefault(p => p.Id.Equals(person.Id));
            try
            {
                _context.Entry(result).CurrentValues.SetValues(person);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return person;
        }

        public bool Exist(long? id)
        {
            return _context.persons.Any(p => p.Id.Equals(id));
        }

        public void Delete(long id)
        {
            var result = _context.persons.SingleOrDefault(p => p.Id.Equals(id));
            try
            {
                if (result != null) _context.persons.Remove(result);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}