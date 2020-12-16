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
		//�ж�count�Ƿ�Ϊnull����Ϊnull��ʾ�������ʹ���ֱ�ӽ�count��ֵ��totalCount
		if(count!=null) {
			totalCount=(int)count;
		}			
		//���ʴ����ۼ�
		request.getServletContext().setAttribute("count",totalCount+1);
		request.setAttribute("totalCount", totalCount);//���������
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
