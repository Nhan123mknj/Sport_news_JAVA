package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Articles;
import models.Categories;

import java.io.IOException;
import java.util.List;

import dal.ArticlesDAO;
import dal.CategoriesDAO;

/**
 * Servlet implementation class HomeController
 */
@WebServlet({"/home"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoriesDAO ct = new CategoriesDAO();
		ArticlesDAO dao = new ArticlesDAO();
		List<Categories> list = ct.getAllCategories();
		List<Articles> listrending = dao.getArticlesTrending();
		List<Articles> listnews = dao.getArticlesNews();
		request.setAttribute("listrending", listrending);
		request.setAttribute("listcate", list);
		request.setAttribute("listnewss", listnews);
		request.getRequestDispatcher("layout.jsp").forward(request, response);
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
