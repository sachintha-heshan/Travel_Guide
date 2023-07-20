package com.contactus;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import com.contactus.configDB;

public class contactusDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertcontactus(String name, String email, String mobile, String message) {
		
		boolean isSuccess = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "insert into contactus values (0,'"+name+"','"+email+"','"+mobile+"','"+message+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
