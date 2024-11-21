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
 * Servlet implementation class UpdateCategoriesServlet
 */
@WebServlet("/admin/update-categories")
public class UpdateCategoriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCategoriesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoriesDAO dao = new CategoriesDAO();
		int id = Integer.parseInt(request.getParameter("id"));
		Categories cate = dao.getCategoriesByID(id);
		request.setAttribute("category", cate);
		request.getRequestDispatcher("/admin/categories/update_categories.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoriesDAO dao = new CategoriesDAO();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		int is_Active = Integer.parseInt(request.getParameter("is_Active"));
		Categories cate = new Categories(id,name,description,is_Active);
		dao.updateCategories(cate);
		response.sendRedirect(request.getContextPath() + "/admin/categories");

	}

}
