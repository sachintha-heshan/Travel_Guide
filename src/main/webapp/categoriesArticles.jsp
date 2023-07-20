<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Category Page Listing - TourGuide</title>
	<link rel="stylesheet" href="./css/categoriesCss.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
    <script src="https://kit.fontawesome.com/fd20cad007.js" crossorigin="anonymous"></script>
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<%
		String idValue = request.getParameter("id");
		int categoryIDs = Integer.parseInt(idValue);
	
		String sql = "select bannerFileName from blogcategory where categoryID="+categoryIDs+"";
		stmt = conn.createStatement();
		
		rs =  stmt.executeQuery(sql);
		
		while(rs.next()){
	%>
	
		<div class="header-image">
	        <img src="./images/blogCategoryImages/categoryBannerImage/<%=rs.getString("bannerFileName")%>" alt="">
	    </div>
	<%
        }
   	%>
	    <div class="container">
	        <div class="list-container">
	            <div class="left-col">
	                <%
						String id = request.getParameter("id");
	                	int categoryID = Integer.parseInt(id);
	            		
	            		String getBlogDetails = "select * from blog where category = (select categoryName from blogcategory where categoryID="+categoryID+")";
	            		stmt = conn.createStatement();
	            		rs =  stmt.executeQuery(getBlogDetails);
	            		
	            		while(rs.next()){
	                      	String ids = rs.getString("blogID");
					%>
	                <h1><%=rs.getString("category")%></h1>
	                <div class="house">
	                    <div class="house-img">
	                        <a href="articlePage.jsp?id=<%= ids%>"><img src="./images/blogImages/<%=rs.getString("imageFileName")%>" alt=""></a>
	                    </div>
	                    <div class="house-info">
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
</body>
</html>