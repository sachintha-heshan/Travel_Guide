<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Feedbacks - TourGuide</title>
	<link rel="stylesheet" href="./css/displayTableList.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Feedbacks</h2>
        </div>
        <div class="table-data">
            <table border="1">
	                <tr>
	                    <th>Name</th>
	                    <th>Email</th>
	                    <th>Mobile Number</th>
	                    <th>Rating</th>
	                    <th>Message</th>
	                </tr>
					<%
						String sql = "select * from feedback";
						stmt = conn.createStatement();
						
						rs =  stmt.executeQuery(sql);
						
						while(rs.next())
                        {	
					%>
		                <tr>
		                    <td><%=rs.getString("name") %></td>
		                    <td><%=rs.getString("email") %></td>
		                    <td><%=rs.getString("phone") %></td>
		                    <td><%=rs.getString("rating") %></td>
		                    <td><%=rs.getString("message") %></td>
		                </tr>
	                <%
                        }
                    %>
            </table>
        </div>
    </div>
	
</body>
</html>