<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tour Guide - Home</title>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
	
    <div class="bg"></div>
    <%
		Connection conn;
		Statement stmt;
		ResultSet rs;
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
	%>
	
    <form action="./searchResult.jsp" method="GET" class="container">
        <div class="centered">
            <input type="text" name="searchQuery" placeholder="Search your favourite place to travel" class="search">
            <!-- <input type="submit" name="submit" value="Search"  class="btn"> -->
        </div>
    </form>

    <br><br>
    <h2 class="topic-01">Top destinations in Sri Lanka</h2>
    <div class="local">
    	<%
		   	String getProvince = "select * from province";
			stmt = conn.createStatement();
			
			rs =  stmt.executeQuery(getProvince);
			
			while(rs.next()){
				String id = rs.getString("provinceID");
    	%>
	        <a href="localListing.jsp?id=<%= id%>"><img src="./images/provinces/<%=rs.getString("imageFileName")%>" alt=""></a>
	    <%
    		}
    	%>
    </div>

    <div class="blog-section">
        <div class="blog-section-header">
            <span class="blog-section-header-01">Find Things to Do by interest</span><br>
            <span>Collections of our best bookable experiences</span>
        </div>
        <div class="row">
        	<%
			   	String getCategory = "select * from blogCategory limit 4";
				stmt = conn.createStatement();
				
				rs =  stmt.executeQuery(getCategory);
				
				while(rs.next()){
					String id = rs.getString("categoryID");
    		%>
	            <div class="column interest">
	              <a href="categoriesArticles.jsp?id=<%= id%>"><img src="./images/blogCategoryImages/<%=rs.getString("imageFileName")%>" alt="Snow" style="width:100%"></a>
	              <div class="bottom-center"><h2><%=rs.getString("categoryName") %></h2></div>
	            </div>
            <%
    			}
    		%>
        </div>
    </div>

    <div class="inspiration">
      <span><b><a href="./blog.jsp">Get inspired for your next trip</a></b></span><br><br>
      <div class="row">
      	<%
		   	String sql = "select * from blog limit 4";
			stmt = conn.createStatement();
			
			rs =  stmt.executeQuery(sql);
			
			while(rs.next()){
				String id = rs.getString("blogID");
    	%>
	        <div class="column">
	          <a href="articlePage.jsp?id=<%= id%>">
	          	<img src="./images/blogImages/<%=rs.getString("imageFileName")%>" alt="Snow" style="width:100%; height:200px">
	          </a>
	          <p style="text-align:center; color:#1D233A"><%=rs.getString("title") %></p>
	        </div>
       	<%
    		}
    	%>
      </div>
    </div>
 
 	
	<div class="global-section">
		<h2>Popular destinations outside Sri Lanka</h2>
		<div class="global-section-row">
	    <%
		   	String getGlobal = "select * from country WHERE countryName NOT IN ('Sri Lanka') limit 10;";
			stmt = conn.createStatement();
			rs =  stmt.executeQuery(getGlobal);
			
			while(rs.next()){
			String id = rs.getString("countryID");
    	%>
	        <div class="global-section-column global-container-section">
	        <a href="globalListing.jsp?id=<%= id%>"><img src="./images/global/<%=rs.getString("imageFileName")%>" alt="Snow" style="width:100%"></a>
	        <div class="global-image-centered"><%=rs.getString("countryName")%></div>
	      </div>
	    <%
    		}
    	%>
	    </div>
	 </div>
 
    <%@include file="./footer.jsp" %>
</body>
</html>