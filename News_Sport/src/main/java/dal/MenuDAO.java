package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import models.Menu;

public class MenuDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public static List<Menu> getAllMenus(){
		List<Menu> menus = new ArrayList<Menu>();
		String query = "SELECT * FROM menu ORDER BY `order` ASC";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			 while (rs.next()) {
		            Menu menu = new Menu(
		                rs.getInt("id"),
		                rs.getString("menu_name"),
		                rs.getString("link"),
		                rs.getString("icon"),
		                rs.getInt("parent_id"),
		                rs.getInt("order"),
		                rs.getInt("isActive")
		            );
		            menus.add(menu);
		        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return menus;
	}
	
	public static Map<Menu, List<Menu>> buildMenuTree(List<Menu> menus) {
	    Map<Integer, List<Menu>> childMap = new HashMap<>();
	    for (Menu menu : menus) {
	        childMap.computeIfAbsent(menu.getparent_id(), k -> new ArrayList<>()).add(menu);
	    }

	    Map<Menu, List<Menu>> menuTree = new LinkedHashMap<>();
	    for (Menu menu : menus) {
	        if (menu.getparent_id() == null) {
	            menuTree.put(menu, childMap.get(menu.getId()));
	        }
	    }
	    return menuTree;
	}
	
	public static Map<Menu, List<Menu>> getMenuTree() {
        List<Menu> menus = getAllMenus();  
        return buildMenuTree(menus);   
	}
	
//	public static void main(String[] args) {
//		MenuDAO dao = new MenuDAO();
//		List<Menu> list = dao.getAllMenus();
//		for (Menu o : list) {
//			System.out.println(o);
//		}
//			
//
//	}
}
