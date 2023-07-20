<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Display Article List - Tour Guide</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayTableList.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
    
    <div class="content">
        <div class="title">
            <h2>Article List</h2>
        </div>
        <div class="add-btn">
            <button><a href="addNewArticle.jsp">Add a new Article</a></button>
        </div>
        <div class="table-data">
            <table border="1">
	            
	                <tr>
	                    <th>Title</th>
	                    <th>Category</th>
	                    <th>Image</th>
	                    <th>Operations</th>
	                </tr>
					<%
						Connection conn;
						Statement stmt;
						ResultSet rs;
						
						Class.forName("com.mysql.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
						
						String sql = "select * from blog";
						stmt = conn.createStatement();
						
						rs =  stmt.executeQuery(sql);
						
						while(rs.next())
                        {
                            String id = rs.getString("blogID");	
					%>
		                <tr>
		                    <td><%=rs.getString("title") %></td>
		                    <td><%=rs.getString("category") %></td>
		                    <td><img src="../images/blogImages/<%=rs.getString("imageFileName") %>" width="140px" height="90px"></td>
		                    <td>
		                        <button class='upd-btn'><a href='updateArticle.jsp?id=<%= id%>'>Update</a></button>
		                        <form action="../deleteBlogServlet" method="post"><button class='del-btn' name="delete" value='<%= id%>'><a>Delete</a></button></form>
		                    </td>
		                </tr>
	                <%
                        }
                    %>
            </table>
        </div>
    </div>
</body>
</html>