using System.Collections.Generic;
using System.Linq;
using RestWithASPNETUdemy.Data.Converter;
using RestWithASPNETUdemy.Model;

namespace RestWithASPNETUdemy.Data.Converters
{
    public class BookConverter : IParser<BookVO, Book>, IParser<Book, BookVO>
    {
        public Book Parse(BookVO origin)
        {
            if (origin == null) return new Book();
            return new Book()
            {
                Id = origin.Id,
                Author = origin.Author,
                Title = origin.Title,
                Price = origin.Price,
                LaunchDate = origin.LaunchDate
            };
        }

        public List<Book> ParseList(List<BookVO> origins)
        {
            return origins == null ? new List<Book>() : origins.Select(Parse).ToList();
        }

        public BookVO Parse(Book origin)
        {
            if (origin == null) return new BookVO();
            return new BookVO()
            {
                Id = origin.Id,
                Author = origin.Author,
                Title = origin.Title,
                Price = origin.Price,
                LaunchDate = origin.LaunchDate
            };
        }

        public List<BookVO> ParseList(List<Book> origins)
        {
            return origins == null ? new List<BookVO>() : origins.Select(Parse).ToList();
        }
    }
}