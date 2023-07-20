package com.tourguide;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.user.configDB;

public class tourguideDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Tour Guide login data Validation
	public static boolean validate(String username, String password){
		try{
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from tourguide where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				isSuccess = true;
			} 
			else{
				isSuccess = false;
			}
		} 
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}// End of the Tour Guide login data Validation
}
