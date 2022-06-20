package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dal.BaoDAO;
import model.Bao;
import model.User;

/**
 * Servlet implementation class BaoController
 */
@WebServlet("/BaoController")
public class BaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BaoDAO BaoDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BaoController() {
		super();
		BaoDAO = new BaoDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User User = (User) session.getAttribute("user");
		if (User == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		String command = (String) request.getParameter("command");
		if (command == null)
			command = "LIST";

		switch (command) {
		case "ADD":
			add_Bao(request, response);
			break;
		case "LIST":
			list_Baos(request, response);
			break;
		case "DELETE":
			delete_Bao(request, response);
			break;
		case "LOAD":
			load_Bao(request, response);
			break;
		case "UPDATE":
			update_Bao(request, response);
			break;
		default:
			list_Baos(request, response);
		}
	}

	private void update_Bao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt((String) request.getParameter("id"));
		String tieuDe = (String) request.getParameter("tieuDe");
		String theLoai = (String) request.getParameter("theLoai");
		String noiDung1 = (String) request.getParameter("noiDung1");
		String noiDung2 = (String) request.getParameter("noiDung2");
		String image = (String) request.getParameter("image");

		BaoDAO.update_Bao(new Bao(id, tieuDe, theLoai, noiDung1, noiDung2, image));

		String msg = "update thanh cong!";
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("add_bao.jsp").forward(request, response);
	}

	private void load_Bao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt((String) request.getParameter("id"));
		Bao b = BaoDAO.load_Bao(id);
		request.setAttribute("Bao", b);
		request.setAttribute("id", id);
		request.getRequestDispatcher("update_bao.jsp").forward(request, response);

	}

	private void delete_Bao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt((String) request.getParameter("id"));
		BaoDAO.delete_Bao(id);

		list_Baos(request, response);
	}

	private void add_Bao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String tieuDe = (String) request.getParameter("tieuDe");
		String theLoai = (String) request.getParameter("theLoai");
		String noiDung1 = (String) request.getParameter("noiDung1");
		String noiDung2 = (String) request.getParameter("noiDung2");
		String image = (String) request.getParameter("image");
		Bao Bao = new Bao(tieuDe, theLoai, noiDung1, noiDung2, image);

		BaoDAO.add_Bao(Bao);

		/* list_Baos(request, response); */
		String msg = "add thanh cong !";
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("add_bao.jsp").forward(request, response);
	}

	private void list_Baos(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<Bao> list = BaoDAO.list();
		request.setAttribute("list_Baos", list);

		try {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
