package tools;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class registerServlet
 */
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");	
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		int userlength = username.length();
		HttpSession session = request.getSession();
		if(userlength>2 && userlength<16) {
			if(password1.equals(password2)) {
				String nowUsername = username;
				String nowPassword = password1;
				session.setAttribute("nowUsername", nowUsername);
				session.setAttribute("nowPassword", nowPassword);
				response.getWriter().print("×¢²á³É¹¦£¬»¶Ó­Äã"+ username +"!3ÃëºóÎªÄúÌø×ªµÇÂ½Ò³");
				response.setHeader("refresh", "3;url=/201702250121LZF/client/login.jsp");
			}
		} else {
			response.getWriter().print("ÕËºÅ³¤¶È±ØĞë2~16Î»");
			response.setHeader("refresh", "3;url=/201702250121LZF/client/register.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
