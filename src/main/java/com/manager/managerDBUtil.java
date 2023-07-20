package com.manager;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;

import com.manager.configDB;

public class managerDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Manager login data Validation
	public static boolean validate(String username, String password){
		try{
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from manager where username='"+username+"' and password='"+password+"'";
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
	}// End of the Manager login data Validation
	
	
	// Manager Registration
	public static boolean insertManager(String firstName, String lastName, String username,String email, String password, String phoneNumber, String gender){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into manager values (0,'"+firstName+"','"+lastName+"','"+username+"','"+email+"','"+password+"','"+phoneNumber+"','"+gender+"',0)";
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
	} // End of the Manager Registration
	
	
	
	// Update Manager
	public static boolean updateManager(int managerID, String firstName, String lastName, String username,String email, String password, String phoneNumber, String gender){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "update manager set firstName = '"+firstName+"', lastName='"+lastName+"', username='"+username+"', email='"+email+"', password='"+password+"', phoneNumber='"+phoneNumber+"', gender='"+gender+"' where managerID='"+managerID+"'";
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
	} // End of the updating manager
	
	
	// Delete Manager
	public static boolean deleteManager(int managerID) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "delete from manager where managerID="+managerID+"";
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
	} // End of the deleting manager
}
