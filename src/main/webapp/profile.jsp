<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("index.jsp");
	}
%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Profile Page - TourGuide</title>
	<link rel="stylesheet" href="./css/profile.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<div class="hero-image">
        <div class="hero-text">
          <h1>Welcome to TourGuide</h1>
          <p>Enjoy world best travel experience with us</p>
        </div>
    </div>

	
	<%
		String username = (String)session.getAttribute("username");
	   	String sql = "select * from user where username='"+username+"'";
		stmt = conn.createStatement();
		
		rs =  stmt.executeQuery(sql);
		
		while(rs.next()){
			String id = rs.getString("userID");
			String firstName = rs.getString("firstName");
			String lastName = rs.getString("lastName");
			String email = rs.getString("email");
			String phoneNumber = rs.getString("phoneNumber");
			String gender = rs.getString("gender");
    %>
	
	<div class="header-section">
	    <div class="user-profile left-p">
	        <img src="./images/profile/avatar.png">
	        <span>Welcome - <%= firstName %> <%= lastName %></span>
	    </div>
	    
	    <div class="right-p">
		    <button class="b-upd"><a href="./updateProfile.jsp">Update Profile</a></button>
		    <form action="deleteUserServlet" method="POST">
		    	<button class="b-del" name="userID" value=<%= id%>>Delete Profile</button>
		    </form>
		</div>
	</div>
	<br><br><br><br><br><br><br>
    <div class="content">
        <table class="user-details">
            <tr>
                <th>Username</th>
                <td><%= username %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= email %></td>
            </tr>
            <tr>
                <th>Mobile Number</th>
                <td><%= phoneNumber %></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><%= gender %></td>
            </tr>
        </table>
        
     <%
     	}
     %>
        <table class="ticket-details">
            <tr>
                <th>Country</th>
                <th>Place Name</th>
                <th>Adult Tickets</th>
                <th>Child Tickets</th>
                <th>Price</th>
            </tr>
            
            <%
				String iusername = (String)session.getAttribute("username");
			   	String isql = "select p.country, p.placeName, p.adults, p.child, p.price, p.datebooked from tourguide.payment p where p.userID = (select userID from tourguide.user where username = '"+iusername+"')";
			   	
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(isql);
				
				while(rs.next()){
		    %>
            
            <tr>
            	<th><%= rs.getString("country") %></th>
                <th><%= rs.getString("placename") %></th>
                <th><%= rs.getString("adults") %></th>
                <th><%= rs.getString("child") %></th>
                <th>$<%= rs.getString("price") %></th>
            </tr>
            <%
     			}
    		%>  
        </table>
    </div>
    
    <%@include file="./footer.jsp" %>
</body>
</html>