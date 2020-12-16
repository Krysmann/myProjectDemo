package tools;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import model.Book;
import model.BookDB;

/**
 * Servlet implementation class PurchaseServlet
 */
public class PurchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id==null) {
			response.sendRedirect("/201702250121LZF/client/cart.jsp");
			return;
		}
		Book book = BookDB.getbook(id);
		HttpSession session=request.getSession();
		List<Book> cart = (List) session.getAttribute("cart");
		if(cart==null) {
			cart=new ArrayList<Book>();
			session.setAttribute("cart", cart);
			cart.add(book);
		}else {
			cart.add(book);
		}
		for(int i=0;i<cart.size();i++) {
			request.setAttribute("booksName"+i, cart.get(i).getName());
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/client/cart.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
