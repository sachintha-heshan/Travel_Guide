package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class feedbackDBUtil{
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertcustomer(String name, String email, String phone, String rating, String message) {
		
		boolean isSuccess = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into feedback values (0,'"+name+"','"+email+"','"+phone+"','"+rating+"','"+message+"')";
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
