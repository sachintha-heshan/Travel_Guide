<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Article Page - TourGuide</title>
	<link rel="stylesheet" href="./css/articlePage.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
	
	<%
		Connection conn;
		Statement stmt;
		ResultSet rs;
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
		
		String id = request.getParameter("id");
		int blogID = Integer.parseInt(id);
		
		String sql = "select * from blog where blogID="+blogID+"";
		stmt = conn.createStatement();
		rs =  stmt.executeQuery(sql);
		
		while(rs.next()){
	%>
	
	<style type="text/css">
		.blog-image{
		    /* The image used */
		    background-image: url("./images/blogImages/<%=rs.getString("imageFileName") %>");
		  
		    /* Full height */
		    height: 50%;
		  
		    /* Center and scale the image nicely */
		    background-position: center;
		    background-repeat: no-repeat;
		    background-size: cover;
		}
	</style>
</head>
<body>
	<%@include file="./header.jsp" %>
  
   <div class="blog-image"></div>
   <div class="container">
       <div class="main-topic">
       	
           <h1><%=rs.getString("title")%></h1>
           <p><%=rs.getString("shortDescription") %></p>
           <div class="category"><p>Category: <%=rs.getString("category") %></p></div>
           <hr class="line">
           <div class="article">
               <%=rs.getString("description") %>
           </div>
    <%
        }
    %>
	        </div>
	    </div>
    
    <%@include file="./footer.jsp" %>
</body>
</html>