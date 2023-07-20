<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Manager Dashboard - TourGuide</title>
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
				String countFeedback = "select count(*) from feedback";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countFeedback);
				
				while(rs.next()){
					int feedbackCount = rs.getInt(1);
			%>
	            <div class='card-02'>
	                <h3>Number of feedbacks</h3>
	                <p><%= feedbackCount %></p>
	            </div>
            <%
				}	
            %>
            
            
            <%
				String countcontactUS = "select count(*) from contactus";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countcontactUS);
				
				while(rs.next()){
					int contactUSCount = rs.getInt(1);
			%>
            <div class='card-03'>
                <h3>Number of ContactUs</h3>
                <p><%= contactUSCount %></p>
            </div>
            <%
				}	
            %>
            
        </div><br>
        
	        <%
					String countTransactions = "select sum(adults) as adults, sum(child) as child, sum(price) as price from payment";
					stmt = conn.createStatement();
					rs =  stmt.executeQuery(countTransactions);
					
					while(rs.next()){
			%>
	        <div class='card'>
	            <div class='card-01'>
	                <h3>No. of adult Tickets</h3>
	                <p><%= rs.getString("adults") %></p>
	            </div>
	            <div class='card-02'>
	                <h3>No. of child Tickets</h3>
	                <p><%= rs.getString("child") %></p>
	            </div>
	            <div class='card-03'>
	                <h3>Total Revenue</h3>
	                <p>$<%= rs.getString("price") %></p>
	            </div>
	        </div>
        	<%
				}	
            %>
        
        <br>
        <div class='card'>
        	<%
				String countGlobalListing = "select count(*) from globallistings";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countGlobalListing);
				
				while(rs.next()){
					int globalListingCount = rs.getInt(1);
			%>
	            <div class='card-01'>
	                <h3>No. Global Listings</h3>
	                <p><%= globalListingCount %></p>
	            </div>
	        <%
				}	
            %>
            
            
            <%
				String countlocalListing = "select count(*) from locallistings";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(countlocalListing);
				
				while(rs.next()){
					int localListingCount = rs.getInt(1);
			%>
	            <div class='card-02'>
	                <h3>No. Local Listings</h3>
	                <p><%= localListingCount %></p>
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