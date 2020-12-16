package tools;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String nowUsername = (String) session.getAttribute("nowUsername");
		String nowPassword = (String) session.getAttribute("nowPassword");
		response.getWriter().print(nowPassword);
		response.getWriter().print(nowUsername);
		String username = request.getParameter("username");
		String password = request.getParameter("password1");
		if((username).equals(nowUsername) && (password).equals(nowPassword)) {
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			request.getSession().setAttribute("user", user);
			request.setAttribute("username", username);
			request.getRequestDispatcher("/countServlet").forward(request, response);
		} else {
			response.getWriter().print("用户名或密码错误，即将返回登录页<br/>");
			response.getWriter().print("如没有跳转，请点击这里：<a href='/201702250121LZF/client/login.jsp'>返回登录</a>");
			response.setHeader("refresh", "3;url=/201702250121LZF/client/login.jsp");		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
