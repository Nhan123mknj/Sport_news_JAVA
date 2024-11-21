package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import models.Articles;
import models.Categories;

public class ArticlesDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Articles> getArticlesTrending() {
		List<Articles> list = new ArrayList<Articles>();
		String query = "SELECT a.*, c.name AS category_name FROM articles a "
				+ "JOIN categories c ON a.category_id = c.id " + "WHERE a.is_trending = 1 AND a.is_active = 1";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Articles article = new Articles(rs.getInt("id"), rs.getString("title"), rs.getString("content"),
						rs.getInt("category_id"), rs.getInt("author_id"), rs.getDate("created_at"),
						rs.getDate("updated_at"), rs.getString("image"), rs.getString("link"), rs.getInt("is_trending"),
						rs.getInt("is_active"), rs.getInt("is_new"));

				article.setCategoryName(rs.getString("category_name"));
				list.add(article);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Articles> getArticlesNews() {
		List<Articles> list = new ArrayList<Articles>();
		String query = "SELECT * FROM `articles` WHERE `is_new` = 1 AND `is_active` = 1";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Articles(rs.getInt("id"), rs.getString("title"), rs.getString("content"),
						rs.getInt("category_id"), rs.getInt("author_id"), rs.getDate("created_at"),
						rs.getDate("updated_at"), rs.getString("image"), rs.getString("link"), rs.getInt("is_trending"),
						rs.getInt("is_active"), rs.getInt("is_new")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Articles> getArticlesByCategory(int categoryId) {
		List<Articles> list = new ArrayList<Articles>();
		
		String query = "SELECT a.*, c.name AS category_name FROM articles a "
				+ "JOIN categories c ON a.category_id = c.id " + "WHERE a.category_id = ? AND a.is_active = 1";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, categoryId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Articles article = new Articles(rs.getInt("id"), rs.getString("title"), rs.getString("content"),
						rs.getInt("category_id"), rs.getInt("author_id"), rs.getDate("created_at"),
						rs.getDate("updated_at"), rs.getString("image"), rs.getString("link"), rs.getInt("is_trending"),
						rs.getInt("is_active"), rs.getInt("is_new"));
//				article.setCategoryName(rs.getString("category_name"));
				list.add(article);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Articles getArticlesByID(int id) {
		String query = "SELECT * FROM `articles` WHERE id = ?";
		try (Connection conn = DBContext.getConnection(); PreparedStatement ps = conn.prepareStatement(query)) {

			ps.setInt(1, id);
			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {

					String title = rs.getString("title");
					String content = rs.getString("content");
					int category_id = rs.getInt("category_id");
					int author_id = rs.getInt("author_id");
					Date created_at = rs.getDate("created_at");
					Date updated_at = rs.getDate("updated_at");
					String image = rs.getString("image");
					String link = rs.getString("link");
					int is_trending = rs.getInt("is_trending");
					int is_active = rs.getInt("is_active");
					int is_new = rs.getInt("is_new");


					return new Articles(id, title, content, category_id, author_id, created_at, updated_at, image, link,
							is_trending, is_active, is_new);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

//	public static void main(String[] args) {
//		ArticlesDAO dao = new ArticlesDAO();
//		Articles list = dao.getArticlesByID(1);
//		
//			System.out.println(list);
//
//	}
}
