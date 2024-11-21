package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Categories;

import java.io.IOException;

import dal.CategoriesDAO;

/**
 * Servlet implementation class AddCategoriesServlet
 */
@WebServlet("/admin/add-categories")
public class AddCategoriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCategoriesServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		if (name == null) {
			System.out.println("name null");
		}
		if (description == null) {
			System.out.println("des null");
		}
		int is_Active = Integer.parseInt(request.getParameter("is_Active"));

		CategoriesDAO dao = new CategoriesDAO();
		dao.addCategories(name, description, is_Active);
		response.sendRedirect(request.getContextPath() + "/admin/categories");
	}

}
