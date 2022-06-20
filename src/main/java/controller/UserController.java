package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dal.UserDAO;
import model.User;

@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

	public UserController() {
		super();
		userDAO = new UserDAO();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		session.removeAttribute("user");

		response.sendRedirect("login.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String username = request.getParameter("user");
		String password = request.getParameter("pwd");

		if (userDAO.checkUsernameExist(username) != null) {
			request.setAttribute("notice", "Tên tài khoản đã tồn tại");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;
		}

		userDAO.userRegister(new User(username, password));
		request.setAttribute("notice", "Đăng ký thành công ✔");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
