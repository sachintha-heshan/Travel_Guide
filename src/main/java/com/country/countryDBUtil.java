package com.country;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.country.configDB;

public class countryDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert a new Country
	public static boolean insertCountry(String countryName, String shortDescription, String description, String embedLink, String imageFileName, String uploadPath){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into country values (0,'"+countryName+"','"+shortDescription+"','"+description+"','"+embedLink+"','"+imageFileName+"','"+uploadPath+"',0)";
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
	} // End of the inserting new country
	
	
	
	// Update the Country
	public static boolean updateCountry(int countryID, String countryName, String shortDescription, String description, String embedLink, String imageFileName, String uploadPath) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "update country set countryName='"+countryName+"',shortDescription='"+shortDescription+"',description='"+description+"',embedLink='"+embedLink+"',imageFileName='"+imageFileName+"',uploadPath='"+uploadPath+"' where countryID='"+countryID+"'";
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
	} // End of the updating country
	
	
	// Delete Country
	public static boolean deleteCountry(int countryID) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "delete from country where countryID="+countryID+"";
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
	} // End of the deleting country
}
