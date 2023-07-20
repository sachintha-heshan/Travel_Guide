package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.province.configDB;

public class paymentDBUtil {
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert Payment
	public static boolean insertPayment(String country, String placeName, String travelAgencyName, String adults, String child, String price, String date, String nameOnCard, String cardNumber, int userID) {
		boolean isSuccess = false;
		
		try{
    		conn = configDB.getConnection();
    		stmt = conn.createStatement();
    	    String sql = "insert into payment values (0,'"+country+"','"+placeName+"','"+travelAgencyName+"','"+adults+"','"+child+"','"+price+"','"+date+"','"+nameOnCard+"','"+cardNumber+"',"+userID+",1)";
    		//System.out.println(sql);
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
	}
}
