<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Dashboard - TourGuide</title>
	<link rel="stylesheet" href="./css/dashboard.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class='content'>
        <div class='title'>
            <h2>Overview</h2>
        </div>
        <div class='card'>
        	<%
				String countUsers = "select count(*) from user";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countUsers);
				
				while(rs.next()){
					int userCount = rs.getInt(1);
			%>
	            <div class='card-01'>
	                <h3>Number of Users</h3>
	                <p><%= userCount %></p>
	            </div>
	        <%
				}	
            %>
            
            <%
				String countManagers = "select count(*) from manager";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countManagers);
				
				while(rs.next()){
					int managerCount = rs.getInt(1);
			%>
	            <div class='card-02'>
	                <h3>Number of Managers</h3>
	                <p><%= managerCount %></p>
	            </div>
            <%
				}	
            %>
            
            <%
				String countTourGuide = "select count(*) from tourguide";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countTourGuide);
				
				while(rs.next()){
					int tourGuideCount = rs.getInt(1);
			%>
            <div class='card-03'>
                <h3>Number of TourGuide</h3>
                <p><%= tourGuideCount %></p>
            </div>
            <%
				}	
            %>
            
            
        </div><br>
        <div class='card'>
        
        	<%
				String countCountries = "select count(*) from country";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countCountries);
				
				while(rs.next()){
					int countryCount = rs.getInt(1);
			%>
	            <div class='card-01'>
	                <h3>Number of Countries</h3>
	                <p><%= countryCount %></p>
	            </div>
	        <%
				}	
            %>
            
            
            <%
				String countListing = "select ( select count(*) from globallistings) + ( select count(*) from locallistings) as total from dual";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countListing);
				
				while(rs.next()){
					int totalListing = rs.getInt(1);
			%>
            <div class='card-02'>
                <h3>Number of Listings</h3>
                <p><%= totalListing %></p>
            </div>
            <%
				}	
            %>
            
            
            <%
				String countTransactions = "select count(*) from payment";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countTransactions);
				
				while(rs.next()){
					int totalTransactions = rs.getInt(1);
			%>
            <div class='card-03'>
                <h3>Number of Transactions</h3>
                <p><%= totalTransactions%></p>
            </div>
            <%
				}	
            %>
            
        </div><br>
        <div class='card'>
        
        	<%
				String countArticles = "select count(*) from blog";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countArticles);
				
				while(rs.next()){
					int articleCount = rs.getInt(1);
			%>
	            <div class='card-01'>
	                <h3>Number of Articles</h3>
	                <p><%= articleCount%></p>
	            </div>
	       	<%
				}	
            %>
            
            
            <%
				String countCategories = "select count(*) from blogcategory";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countCategories);
				
				while(rs.next()){
					int categoryCount = rs.getInt(1);
			%>
            <div class='card-02'>
                <h3>Numbers of Categories</h3>
                <p><%= categoryCount %></p>
            </div>
            <%
				}	
            %>
            
            <div class='card-03'>
                <h3>Number of Issues</h3>
                <p>0</p>
            </div>
        </div>
    </div>
    
</body>
</html>