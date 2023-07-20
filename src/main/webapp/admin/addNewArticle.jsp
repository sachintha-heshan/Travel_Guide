<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   	<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add new Article - Tour Guide</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
    
    <div class="content">
        <div class="title">
            <h2>Add a new article</h2>
        </div>
        <form action="../blogServlet" class="form-group" method="POST" enctype="multipart/form-data">
            <div class="input-group">
                <label>Enter the title</label>
                <input type="text" name="title" required autocomplete="off">
            </div>
            <div class="input-group">
                <label>Enter short description</label>
                <input type="text" name="shortDescription" required autocomplete="off">
            </div>
            
            <div class="input-group">
	        	<label>Select the Category</label>
	        	<select name="category">
            <%
				Connection conn;
				Statement stmt;
				ResultSet rs;
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
				
				String sql = "select * from blogcategory";
				stmt = conn.createStatement();
				
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
	           		String id = rs.getString("categoryID");
			%>
                <option value="<%=rs.getString("categoryName")%>"><%=rs.getString("categoryName") %></option>
            <%
           		}
            %>
            	</select>
            </div>
            
            <div class="input-group">
                <label>Write your article</label>
                <textarea name="description" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image">
            </div>
            <input type="submit" name="submit" value="Publish Article" class="btn">
        </form>
    </div>
</body>
</html>