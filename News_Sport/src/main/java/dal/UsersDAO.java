package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import models.Users;
import util.MD5Util;
public class UsersDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public Users checkAccountExits(String email) {
		String query = "SELECT * FROM users WHERE email = ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			
			 while (rs.next()) {
		            return new Users(
		                rs.getInt("id"),
		                rs.getString("username"),
		                rs.getString("password"),  
		                rs.getInt("enabled"),
		                rs.getString("fullname"),
		                rs.getString("email"),
		                rs.getString("telephone"),
		                rs.getInt("role")
		            );
		        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void register(String email, String password, String username)
	{
		
		String query = "INSERT INTO `users`( `username`, `password`, `enabled`, `email`) VALUES (?,?,1,?)";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			String hashedPassword = MD5Util.hashPassword(password);
			ps.setString(1, username);
			ps.setString(2, hashedPassword);
			ps.setString(3, email);
			ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	
	public Users login(String email, String password) {
	    String query = "SELECT * FROM users WHERE email = ?";
	    try {
	        Connection conn = DBContext.getConnection();
	        PreparedStatement ps = conn.prepareStatement(query);
	        
	        String hashedPassword = MD5Util.hashPassword(password);

	        ps.setString(1, email);
	        
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            String storedHashedPassword = rs.getString("password");

	            if (storedHashedPassword.equals(hashedPassword)) {
	                return new Users(
	                    rs.getInt("id"),
	                    rs.getString("username"),
	                    rs.getString("password"),
	                    rs.getInt("enabled"),
	                    rs.getString("fullname"),
	                    rs.getString("email"),
	                    rs.getString("telephone"),
	                    rs.getInt("role")
	                );
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	


}
