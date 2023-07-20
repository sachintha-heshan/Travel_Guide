package com.province;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.province.configDB;

public class provinceDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert a new province
	public static boolean insertProvince(String provinceName, String capital, String districts, String description, String embedLink, String imageFileName, String uploadPath){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into province values (0,'"+provinceName+"','"+capital+"','"+districts+"','"+description+"','"+embedLink+"','"+imageFileName+"','"+uploadPath+"',0)";
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
	} // End of the inserting new province
	
	
	// Update the Country
	public static boolean updateProvince(int provinceID, String provinceName, String capital, String districts, String description, String embedLink, String imageFileName, String uploadPath) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "update province set provinceName='"+provinceName+"',capital='"+capital+"',districts='"+districts+"',description='"+description+"',embedLink='"+embedLink+"',imageFileName='"+imageFileName+"',uploadPath='"+uploadPath+"' where provinceID='"+provinceID+"'";
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
	
	
	// Delete Province
	public static boolean deleteProvince(int provinceID) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "delete from province where provinceID="+provinceID+"";
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
	} // End of the deleting province
}
