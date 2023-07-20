<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Blog - Tour Guide</title>
    <link rel="stylesheet" href="./css/blog.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	
	<%@include file="./header.jsp" %>
      
    <div class="container">
      <div class="list-container">
          <div class="left-col">
              <p>100+ Articles</p>
              <h1>Recommended By Your Recent Activity</h1>
       <%
			Connection conn;
			Statement stmt;
			ResultSet rs;
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
			
			String sql = "select * from blog";
			stmt = conn.createStatement();
			
			rs =  stmt.executeQuery(sql);
			
			while(rs.next()){
                  	String id = rs.getString("blogID");	
		%>
              <div class="house">
              	
                  <div class="house-img">
                      <a href="articlePage.jsp?id=<%= id%>"><img src="./images/blogImages/<%=rs.getString("imageFileName")%>" alt=""></a>
                  </div>
                  <div class="house-info">
                      <p></p>
                      <h3><%=rs.getString("title") %></h3>
                      <p><%=rs.getString("shortDescription") %></p>
                      <p>Category: <%=rs.getString("category") %></p>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star-half-alt"></i>
                  </div>
              </div>
              <%
                 }
              %>
          </div> 
      </div>
    </div>
      
    <%@include file="./footer.jsp" %>
</body>
</html>