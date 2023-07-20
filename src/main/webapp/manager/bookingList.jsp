<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Booking List - TourGuide</title>
	<link rel="stylesheet" href="./css/displayTableList.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Booking Details</h2>
        </div>
        <div class="table-data">
            <table border="1">
	                <tr>
	                    <th>Country Name</th>
	                    <th>Place Name</th>
	                    <th>Travel Agency Name</th>
	                    <th>Adults</th>
	                    <th>Child</th>
	                    <th>Price</th>
	                    <th>Date Booked</th>
	                </tr>
					<%
						String sql = "select * from payment";
						stmt = conn.createStatement();
						
						rs =  stmt.executeQuery(sql);
						
						while(rs.next())
                        {
					%>
		                <tr>
		                    <td><%=rs.getString("country") %></td>
		                    <td><%=rs.getString("placeName") %></td>
		                    <td><%=rs.getString("travelAgencyName") %></td>
		                    <td><%=rs.getString("adults") %></td>
		                    <td><%=rs.getString("child") %></td>
		                    <td><%=rs.getString("price") %></td>
		                    <td><%=rs.getString("dateBooked") %></td>
		                </tr>
	                <%
                        }
                    %>
            </table>
        </div>
    </div>
    
    
</body>
</html>