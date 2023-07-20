<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Provinces List - TourGuide</title>
	<link rel="stylesheet" href="./css/displayTableList.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	<div class="content">
        <div class="title">
            <h2>Provinces List</h2>
        </div>
        <div class="add-btn">
            <button><a href="addNewProvince.jsp">Add a new Provinces</a></button>
        </div>
        <div class="table-data">
            <table border="1">
               <tr>
                   <th>Provinces Name</th>
                   <th>Capital</th>
                   <th>Districts</th>
                   <th>Image</th>
                   <th>Operations</th>
               </tr>
			<%
				Connection conn;
				Statement stmt;
				ResultSet rs;
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
				
				String sql = "select * from province";
				stmt = conn.createStatement();
				
				rs =  stmt.executeQuery(sql);
				
				while(rs.next())
                      {
                          String id = rs.getString("provinceID");	
			%>
                <tr>
                    <td><%=rs.getString("provinceName") %></td>
                    <td><%=rs.getString("capital") %></td>
                    <td><%=rs.getString("districts") %></td>
                    <td><img src="../images/provinces/<%=rs.getString("imageFileName") %>" width="140px" height="90px"></td>
                    <td>
                        <button class='upd-btn'><a href='updateProvince.jsp?id=<%= id%>'>Update</a></button>
                        <form action="../deleteProvinceServlet" method="get"><button class='del-btn' name="delete" value='<%= id%>'><a>Delete</a></button></form>
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