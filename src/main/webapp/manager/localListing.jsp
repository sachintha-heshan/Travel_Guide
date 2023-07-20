<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Local Listing - TourGuide</title>
	<link rel="stylesheet" href="./css/displayTableList.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Local Listing</h2>
        </div>
        <div class="add-btn">
            <button><a href="addNewLocalPlace.jsp">Add a Local Place</a></button>
        </div>
        <div class="table-data">
            <table border="1">
	                <tr>
	                    <th>Place Name</th>
	                    <th>Country</th>
	                    <th>Province</th>
	                    <th>Location</th>
	                    <th>Travel Agency</th>
	                    <th>Price</th>
	                    <th>Operations</th>
	                </tr>
					<%
						Connection conn;
						Statement stmt;
						ResultSet rs;
						
						Class.forName("com.mysql.jdbc.Driver");
						conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
						
						String sql = "select * from locallistings";
						stmt = conn.createStatement();
						
						rs =  stmt.executeQuery(sql);
						
						while(rs.next())
                        {
                            String id = rs.getString("listingID");	
					%>
		                <tr>
		                    <td><%=rs.getString("placeName") %></td>
		                    <td><%=rs.getString("country") %></td>
		                    <td><%=rs.getString("province") %></td>
		                    <td><%=rs.getString("location") %></td>
		                    <td><%=rs.getString("travelAgencyName") %></td>
		                    <td><%=rs.getString("price") %></td>
		                    <td>
		                        <button class='upd-btn'><a href='updateLocalPlace.jsp?id=<%= id%>'>Update</a></button>
		                        <form action="../deleteLocalPlace" method="get"><button class='del-btn' name="delete" value='<%= id%>'><a>Delete</a></button></form>
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