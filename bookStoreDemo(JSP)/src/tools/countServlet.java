package tools;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class countServlet
 */
public class countServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		int totalCount = 1;
		Object count = request.getServletContext().getAttribute("count");
		//判断count是否为null，不为null表示曾经访问过，直接将count赋值给totalCount
		if(count!=null) {
			totalCount=(int)count;
		}			
		//访问次数累加
		request.getServletContext().setAttribute("count",totalCount+1);
		request.setAttribute("totalCount", totalCount);//输出到界面
		RequestDispatcher dispatcher = request.getRequestDispatcher("/client/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
