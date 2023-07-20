package com.blog;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.blog.configDB;
import com.blog.blog;

public class blogDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert blog article
	public static boolean insertArticle(String title, String shortDescription, String category, String description, String imageFileName, String uploadPath){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into blog values (0,'"+title+"','"+shortDescription+"','"+category+"','"+description+"','"+imageFileName+"','"+uploadPath+"',0)";
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
	} // End of the inserting blog article
	
	
	// Update the article
	public static boolean updateArticle(int blogID, String title,String shortDescription, String category, String description, String imageFileName, String uploadPath) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "update blog set title='"+title+"', shortDescription='"+shortDescription+"' , category='"+category+"', description='"+description+"',imageFileName='"+imageFileName+"',uploadPath='"+uploadPath+"' where blogID='"+blogID+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0){
    			isSuccess = true;
    		}
    		else{
    			isSuccess = false;
    		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	} // End of the updating article
	
	
	// Delete the Article
	public static boolean deleteArticle(int blogID) {
		boolean isSuccess = false;
		
		try{
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
			String sql = "delete from blog where blogID="+blogID+"";
			stmt = conn.createStatement();
			int rs =  stmt.executeUpdate(sql);
			
			if(rs > 0){
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	} // End of the deleting article
	
	
	
	// Fetch blog article data
	public static List<blog> fetchData(){
		ArrayList<blog> searchInfo = new ArrayList<>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "select * from blog";
			rs = stmt.executeQuery(sql);
			
			System.out.println(sql);
			
			while(rs.next()) {
				int blogID = rs.getInt("blogID");
				String title = rs.getString("title");
				String shortDescription = rs.getString("shortDescription");
				String category = rs.getString("category");
				String description = rs.getString("description");
				String imageFileName = rs.getString("imageFileName");
				String uploadPath = rs.getString("uploadPath");
				
				blog s = new blog(blogID, title, shortDescription, category, description, imageFileName, uploadPath);
				searchInfo.add(s);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return searchInfo;
	}
}
