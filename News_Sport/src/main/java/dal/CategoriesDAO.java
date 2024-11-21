package dal;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import models.Categories;

public class CategoriesDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Categories> getAllCategories() {
		List<Categories> list = new ArrayList<Categories>();
		String query = "SELECT * FROM `categories`";
		try {
			Connection conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Categories(rs.getInt("id"), rs.getString("name"), rs.getString("description"),
						rs.getDate("created_at"), rs.getDate("updated_at"), rs.getInt("is_Active")));

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	public Categories getCategoriesByID(int id) {
		String query = "SELECT * FROM `categories` WHERE id = ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String description = rs.getString("description");
				Date created_at = rs.getDate("created_at");
				Date updated_at = rs.getDate("updated_at");
				int is_Active = rs.getInt("is_Active");
				Categories cate = new Categories(id, name, description, created_at, updated_at, is_Active);
				return cate;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void addCategories(String name, String description, int is_Active) {
		String query = "INSERT INTO `categories`( `name`, `description`, `is_Active`) VALUES (?,?,?)";
		Connection connection = null;
		PreparedStatement ps = null;
		try {

			connection = DBContext.getConnection();
			ps = connection.prepareStatement(query);

			ps.setString(1, name);
			ps.setString(2, description);
			ps.setInt(3, is_Active);

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (ps != null)
					ps.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void deleteCategories(int id) {
		String query = "DELETE FROM `categories` WHERE id = ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateCategories(Categories cate) {
		String query = "UPDATE categories SET name = ?, description = ?, is_Active = ? WHERE id = ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, cate.getName());
			ps.setString(2, cate.getDescription());
			ps.setInt(3, cate.getIs_Active());
			ps.setInt(4, cate.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		CategoriesDAO dao = new CategoriesDAO();
		List<Categories> cate = dao.getAllCategories();
		for (Categories categories : cate) {
			System.out.println(categories);
		}

	}
}
