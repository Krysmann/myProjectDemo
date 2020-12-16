package tools;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.orb.StringPair;
import com.sun.xml.internal.bind.v2.model.core.ID;

import model.Book;
import model.BookDB;

/**
 * Servlet implementation class ListBookServlet
 */
public class ListBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public ListBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		Collection<Book> books = BookDB.getAll();
		ArrayList<String> bookNames=new ArrayList<String>();
		ArrayList<String> bookurl=new ArrayList<String>();
		for(Book book :books) {
			bookNames.add(book.getName());
			bookurl.add("/201702250121LZF/PurchaseServlet?id="+book.getId());
			System.out.print(bookurl);
		}
		for(int i=0;i<bookNames.size();i++) {
			request.setAttribute("bookNames"+i, bookNames.get(i));
			request.setAttribute("bookurl"+i, bookurl.get(i));
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/client/content.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
