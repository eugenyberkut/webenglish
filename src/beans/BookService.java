package beans;

import tables.Book;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class BookService {
    @PersistenceContext
    EntityManager em;

    public Book find(Integer id){
        return em.find(Book.class, id);
    }

    public Book create(String title,Integer pages){
        Book book = new Book(title,pages);
        em.persist(book);
        return book;
    }
    public List<Book> findAll ()  {

        return em.createNamedQuery("Book.findAll").getResultList();
    }

    public void remove(Integer id) {
        Book book = em.find(Book.class, id);
        em.remove(book);


    }
}
