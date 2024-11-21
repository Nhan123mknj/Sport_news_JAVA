package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Users;

import java.io.IOException;

import dal.UsersDAO;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String re_pass = request.getParameter("repass");
		if(!password.equals(re_pass)) {
			request.setAttribute("error", "Mật khẩu bạn nhập không khớp.");
			request.getRequestDispatcher("register.jsp").forward(request, response);;
		}else {
			UsersDAO dao = new UsersDAO();
			Users user = dao.checkAccountExits(email);
			if(user==null) {
				dao.register(email, password, username);
				request.getRequestDispatcher("login.jsp").forward(request, response);;
			}else {
				request.setAttribute("error_s", "Email của bạn đã tồn tại xin vui lòng nhập lại email khác.");
				request.getRequestDispatcher("register.jsp").forward(request, response);;
			}
		}
	}

}
