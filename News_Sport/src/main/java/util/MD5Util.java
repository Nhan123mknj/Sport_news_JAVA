package util;

import java.security.MessageDigest;

public class MD5Util {
	public static String hashPassword(String password) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			
			byte[] hashedBytes = md.digest(password.getBytes());
			
			StringBuilder sb = new StringBuilder();
			for(byte b : hashedBytes) {
				sb.append(String.format("%02x", b));
			}
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
