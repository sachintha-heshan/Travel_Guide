package com.blogCategory;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import com.blog.configDB;

public class categoryDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert new category
	public static boolean insertCategory(String categoryName, String imageFileName, String uploadPath, String bannerFileName, String uploadPath2){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into blogcategory values (0,'"+categoryName+"','"+imageFileName+"','"+uploadPath+"','"+bannerFileName+"','"+uploadPath2+"',0)";
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
	} // End of the inserting new category
	
	
	// Update the category
	public static boolean updateCategory(int categoryID, String categoryName, String imageFileName, String uploadPath, String bannerFileName, String uploadPath2) {
		boolean isSuccess = true;
		
		try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "update blogcategory set categoryName='"+categoryName+"', imageFileName='"+imageFileName+"', uploadPath='"+uploadPath+"', bannerFileName='"+bannerFileName+"', bannerImagePath='"+uploadPath2+"' where categoryID='"+categoryID+"'";
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
	} // End of the updating the category
	
	
	// Delete Category
	public static boolean deleteCategory(int categoryID) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "delete from blogcategory where categoryID="+categoryID+"";
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
	} // End of the deleting Category
}
