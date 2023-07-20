<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Country - TourGuide</title>
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
				int countryID = Integer.parseInt(id);
				
				String sql = "select * from country where countryID="+countryID+"";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
   	
   		%>
        <form action="../countryUpdateServlet" class="form-group" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="countryID" required autocomplete="off" placeholder=<%=rs.getString("countryID")%> value=<%=rs.getString("countryID")%> readonly>
            
            <div class="input-group">
                <label>Enter Country Name</label>
                <input type="text" name="countryName" required autocomplete="off" placeholder=<%=rs.getString("countryName")%>>
            </div>
            <div class="input-group">
                <label>Enter short description</label>
                <input type="text" name="shortDescription" required autocomplete="off" placeholder=<%=rs.getString("shortDescription")%>>
            </div>
            <div class="input-group">
                <label>Enter description</label>
                <textarea name="description" id="" cols="116" rows="10" required placeholder=<%=rs.getString("description")%>></textarea>
            </div>
            <div class="input-group">
                <label>Embed Country Link</label>
                <textarea name="embedLink" id="" cols="116" rows="10" required placeholder=<%=rs.getString("embedLink")%>></textarea>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image">
            </div>
            <input type="submit" name="submit" value="Update the Country" class="btn">
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