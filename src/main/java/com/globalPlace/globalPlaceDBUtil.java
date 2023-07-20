package com.globalPlace;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import com.blog.configDB;
import com.configDB.*;

public class globalPlaceDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert new global place
	public static boolean insertPlace(String placeName, String country, String location, String ageGap, String groupSize, String timeDuration, String startTime, String languages, String price, String agencyName, String description, String whatsInclude, String whatExpect, String dandr, String embedLink, String imageFileName1, String imageFileName2, String imageFileName3, String imageFileName4, String imageFileName5, String uploadPath1, String uploadPath2, String uploadPath3, String uploadPath4, String uploadPath5){
	
    	boolean isSuccess = false;
    	
    	try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into globallistings values (0,'"+placeName+"','"+country+"','"+location+"','"+ageGap+"','"+groupSize+"','"+timeDuration+"','"+startTime+"','"+languages+"','"+price+"','"+agencyName+"','"+description+"','"+whatsInclude+"','"+whatExpect+"','"+dandr+"','"+embedLink+"','"+imageFileName1+"','"+imageFileName2+"','"+imageFileName3+"','"+imageFileName4+"','"+imageFileName5+"','"+uploadPath1+"','"+uploadPath2+"','"+uploadPath3+"','"+uploadPath4+"','"+uploadPath5+"')";
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
	} // End of the inserting new global place
	
	
	// update the place
	public static boolean updatePlace(int listingID, String placeName, String country, String location, String ageGap, String groupSize, String timeDuration, String startTime, String languages, String price, String agencyName, String description, String whatsInclude, String whatsExpect, String dandr, String embedLink, String imageFileName1, String imageFileName2, String imageFileName3, String imageFileName4, String imageFileName5, String uploadPath1, String uploadPath2, String uploadPath3, String uploadPath4, String uploadPath5) {
		boolean isSuccess = true;
		
		try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "update globallistings set placeName='"+placeName+"', country='"+country+"', location='"+location+"', ageGap='"+ageGap+"', groupSize='"+groupSize+"', timeDuration='"+timeDuration+"', startTime='"+startTime+"', languages='"+languages+"', price='"+price+"', travelAgencyName='"+agencyName+"', description='"+description+"', whatsInclude='"+whatsInclude+"', whatsExpect='"+whatsExpect+"', depature_and_return='"+dandr+"', embedLink='"+embedLink+"', imageFileName1='"+imageFileName1+"', imageFileName2='"+imageFileName2+"', imageFileName3='"+imageFileName3+"', imageFileName4='"+imageFileName4+"', imageFileName5='"+imageFileName5+"', imageUploadPath1='"+uploadPath1+"', imageUploadPath2='"+uploadPath2+"', imageUploadPath3='"+uploadPath3+"', imageUploadPath4='"+uploadPath4+"', imageUploadPath5='"+uploadPath5+"' where listingID='"+listingID+"'";
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
	} // End of the updating the place
	
	
	// Delete Place
	public static boolean deletePlace(int listingID) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
    		stmt = conn.createStatement();
    		String sql = "delete from globallistings where listingID="+listingID+"";
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
	} // End of the deleting place
}
