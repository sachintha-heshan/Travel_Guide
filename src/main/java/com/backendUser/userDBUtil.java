package com.backendUser;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.backendUser.configDB;

public class userDBUtil{
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// User registration
	public static boolean insertUser(String firstName, String lastName, String username,String email, String password, String phoneNumber, String gender){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into user values (0,'"+firstName+"','"+lastName+"','"+username+"','"+email+"','"+password+"','"+phoneNumber+"','"+gender+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0){
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
	} // End of the User Registration
	
	
	
	// Update User
	public static boolean updateUser(int userID, String firstName, String lastName, String username,String email, String password, String phoneNumber, String gender){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "update user set firstName = '"+firstName+"', lastName='"+lastName+"', username='"+username+"', email='"+email+"', password='"+password+"', phoneNumber='"+phoneNumber+"', gender='"+gender+"' where userID='"+userID+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0){
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
	} // End of the updating user
	
	
	// Delete User
	public static boolean deleteUser(int userID) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "delete from user where userID="+userID+"";
			stmt = conn.createStatement();
			int rs =  stmt.executeUpdate(sql);
			
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
	} // End of the deleting user
}

