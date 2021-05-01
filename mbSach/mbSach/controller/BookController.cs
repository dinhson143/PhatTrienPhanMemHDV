using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace mbSach.controller
{
    public class BookController : ApiController
    {
        [HttpGet]
        public List<Book> getListBook()
        {
            mbBookdbmlDataContext db = new mbBookdbmlDataContext();
            List<Book> lb = db.Books.ToList();
            foreach(Book b in lb)
            {
                b.Category = null;
                b.OrderDetails.Clear();
            }

            return lb;
        }
        [HttpPost]
        public bool insertBook(int CategoryID, string Tittle, int Year, float Price, string BookDecription, string PublishingCompany, string Author)
        {
            try
            {
                mbBookdbmlDataContext db = new mbBookdbmlDataContext();
                Book book = new Book();
                book.CategoryID = CategoryID;
                book.Tittle = Tittle;
                book.Year = Year;
                book.Price = Price;
                book.BookDecription = BookDecription;
                book.PublishingCompany = PublishingCompany;
                book.Author = Author;                         
                db.Books.InsertOnSubmit(book);
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        [HttpPut]
        public bool UpdateBook(int bookID, int CategoryID, string Tittle, int Year, float Price, string BookDecription, string PublishingCompany, string Author)
        {
            try
            {
                mbBookdbmlDataContext db = new mbBookdbmlDataContext();
                //lấy food tồn tại ra
                Book book = db.Books.FirstOrDefault(x => x.BookID == bookID);
                if (book == null) return false;//không tồn tại false
                book.CategoryID = CategoryID;
                book.Tittle = Tittle;
                book.Year = Year;
                book.Price = Price;
                book.BookDecription = BookDecription;
                book.PublishingCompany = PublishingCompany;
                book.Author = Author;
                db.SubmitChanges();//xác nhận chỉnh sửa
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
