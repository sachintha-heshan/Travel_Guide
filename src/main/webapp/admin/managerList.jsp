<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Manager List - TourGuide</title>
	<link rel="stylesheet" href="./css/displayTableList.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Manager List</h2>
        </div>
        <div class="add-btn">
            <button><a href="addNewManager.jsp">Add new Manager</a></button>
        </div>
        <div class="table-data">
            <table border="1">
	            
	                <tr>
	                    <th>FirstName</th>
	                    <th>LastName</th>
	                    <th>username</th>
	                    <th>email</th>
	                    <th>password</th>
	                    <th>Gender</th>
	                    <th>Operations</th>
	                </tr>
					<%
						String sql = "select * from manager";
						stmt = conn.createStatement();
						
						rs =  stmt.executeQuery(sql);
						
						while(rs.next())
                        {
                            String id = rs.getString("managerID");	
					%>
		                <tr>
		                    <td><%=rs.getString("firstName") %></td>
		                    <td><%=rs.getString("lastName") %></td>
		                    <td><%=rs.getString("username") %></td>
		                    <td><%=rs.getString("email") %></td>
		                    <td><%=rs.getString("password") %></td>
		                    <td><%=rs.getString("gender") %></td>
		                    <td>
		                        <button class='upd-btn'><a href='updateManager.jsp?id=<%= id%>'>Update</a></button>
		                        <form action="../deleteManager" method="get"><button class='del-btn' name="delete" value='<%= id%>'><a>Delete</a></button></form>
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