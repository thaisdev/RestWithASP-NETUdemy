using System.Collections.Generic;
using System.Threading;
using RestWithASPNETUdemy.Model;

namespace RestWithASPNETUdemy.Services.Implementattions
{
    public class PersonServiceImpl : IPersonService
    {
        private volatile int count;
        
        public Person Create(Person person)
        {
            return person;
        }

        public Person FindById(long id)
        {
            return new Person()
            {
                Id = IncrementAndGet(),
                FirstName = "Thaís",
                LastName = "Oliveira",
                Address = "Rua Cananéia, 100",
                Gender = "Female"
            };
        }

        public List<Person> FindAll()
        {
            List<Person> persons = new List<Person>();

            for (int i = 0; i < 8; i++)
            {
                Person person = MockPerson(i);
                persons.Add(person);
            }

            return persons;
        }

        private Person MockPerson(int i)
        {
            return new Person()
            {
                Id = IncrementAndGet(),
                FirstName = "Person Name " + i,
                LastName = "Person Lastname " + i,
                Address = "Some Address " + i,
                Gender = "Male"
            };
        }

        private long IncrementAndGet()
        {
            return Interlocked.Increment(ref count);
        }

        public Person Update(Person person)
        {
            return person;
        }

        public void Delete(long id)
        {
        }
    }
}