using System.Collections.Generic;
using RestWithASPNETUdemy.Business.Generic;
using RestWithASPNETUdemy.Data.Converters;
using RestWithASPNETUdemy.Model;
using Tapioca.HATEOAS.Utils;

namespace RestWithASPNETUdemy.Business.Implementattions
{
    public class PersonBusinessImpl : IPersonBusiness
    {

        private readonly IPersonRepository _repository;
        private readonly PersonConverter _converter;

        public PersonBusinessImpl(IPersonRepository repository)
        {
            _repository = repository;
            _converter = new PersonConverter();
        }

        public PersonVO Create(PersonVO person)
        {
            var personEntity = _converter.Parse(person);
            personEntity = _repository.Create(personEntity);
            return _converter.Parse(personEntity);
        }

        public PersonVO FindById(long id)
        {
            return _converter.Parse(_repository.FindById(id));
        }

        public List<PersonVO> FindAll()
        {
            return _converter.ParseList(_repository.FindAll());
        }

        public List<PersonVO> FindByName(string firstName, string lastName)
        {
            return _converter.ParseList(_repository.FindByName(firstName, lastName));
        }

        public PersonVO Update(PersonVO person)
        {
            var personEntity = _converter.Parse(person);
            personEntity = _repository.Update(personEntity);
            return _converter.Parse(personEntity);
        }

        public void Delete(long id)
        {
            _repository.Delete(id);
        }

        public PagedSearchDTO<PersonVO> FindWithPagedSearch(string name, string sortDirection, int pageSize, int page)
        {
            page = page > 0 ? page - 1 : 0; 
            string query = @"select * from persons p";
            if (!string.IsNullOrEmpty(name)) query += $" where p.FirstName like '%{name}%'";
            query += $" order by p.FirstName {sortDirection} limit {pageSize} offset {page}";
            
            string countQuery = @"select count(*) from persons p";
            if (!string.IsNullOrEmpty(name)) countQuery += $" where p.FirstName like '%{name}%'";
            
            var persons = _converter.ParseList(_repository.FindWithPagedSearch(query));
            int totalResults = _repository.GetCount(countQuery);
            return new PagedSearchDTO<PersonVO>
            {
                CurrentPage = page + 1,
                List = persons,
                PageSize = pageSize,
                SortDirections = sortDirection,
                TotalResults = totalResults
            };
        }
    }
}
