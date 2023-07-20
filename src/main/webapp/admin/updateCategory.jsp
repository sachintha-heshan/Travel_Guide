<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Category - TourGuide</title>
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Update Country Details</h2>
        </div>
        <%
	   		try{
	   			Connection conn;
				Statement stmt;
				ResultSet rs;
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
				
				String id = request.getParameter("id");
				int categoryID = Integer.parseInt(id);
				
				String sql = "select * from blogcategory where categoryID="+categoryID+"";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
   	
   		%>
        <form action="../updateCategoryServlet" class="form-group" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="categoryID" required autocomplete="off" placeholder=<%=rs.getString("categoryID")%> value=<%=rs.getString("categoryID")%> readonly>
            
            <div class="input-group">
                <label>Enter Category name</label>
                <input type="text" name="categoryName" required autocomplete="off" placeholder=<%=rs.getString("categoryName")%>>
            </div>
            <div class="input-group">
                <label>Upload Category Image</label>
                <input type="file" name="image">
            </div>
            <div class="input-group">
                <label>Upload Banner Image</label>
                <input type="file" name="bannerImage">
            </div>
            <input type="submit" name="submit" value="Update the Category" class="btn">
        </form>
        <%
				}
	   		}
	   		catch(Exception e){
	   			e.printStackTrace();
	   		}
        %>
    </div>
</body>
</html>