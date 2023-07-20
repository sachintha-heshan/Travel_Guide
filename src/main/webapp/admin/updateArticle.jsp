<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Article - Tour Guide</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
    
    <div class="content">
        <div class="title">
            <h2>Update the article</h2>
        </div>
        
        <%
	   		try{
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
        <form action="../blogUpdateServlet" class="form-group" method="POST" enctype="multipart/form-data">
			<input type="hidden" name="number" required autocomplete="off" placeholder=<%=rs.getString("blogID")%> value=<%=rs.getString("blogID")%> readonly>
            <div class="input-group">
                <label>Enter the title</label>
                <input type="text" name="title" required autocomplete="off" placeholder=<%=rs.getString("title") %>>
            </div>
            <div class="input-group">
                <label>Enter short description</label>
                <input type="text" name="shortDescription" required autocomplete="off" placeholder=<%=rs.getString("shortDescription") %>>
            </div>
            
            <div class="input-group">
                <label>Write your article</label>
                <textarea name="description" id="" cols="116" rows="10" required placeholder=<%=rs.getString("description") %>></textarea>
            </div>  
        <%
				}
	   		}
	   		catch(Exception e){
	   			e.printStackTrace();
	   		}
        %>	
        	
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
                <label>Enter Cover Image</label>
                <input type="file" name="image">
            </div>
        	<input type="submit" name="submit" value="Update the Article" class="btn">
        </form> 
    </div>
</body>
</html>