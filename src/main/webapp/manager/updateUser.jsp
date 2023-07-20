<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update User - TourGuide</title>
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Update the User</h2>
        </div>
        <form action="../updateUserServlet" class="form-group" method="POST">
        <%
	   		try{
	   			String id = request.getParameter("id");
				int userID = Integer.parseInt(id);
				
				String sql = "select * from user where userID="+userID+"";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
   		%>
   			
        	<input type="hidden" name="userID" required autocomplete="off" placeholder=<%=rs.getString("userID")%> value=<%=rs.getString("userID")%> readonly>
            <div class="input-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" autocomplete="off" placeholder=<%=rs.getString("firstName")%> required>
                </div>
                <div class="input-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" autocomplete="off" placeholder=<%=rs.getString("lastName")%> required>
                </div>
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="username" autocomplete="off" placeholder=<%=rs.getString("username")%> required>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" autocomplete="off" placeholder=<%=rs.getString("email")%> required>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" id="pass" autocomplete="off" placeholder=<%=rs.getString("password")%> required>
                </div>
                <div class="input-group">
                    <label>Confirm Password</label>
                    <input type="password" name="cpassword" id="cpass" autocomplete="off" placeholder=<%=rs.getString("password")%> required>
                </div>
                <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="number" autocomplete="off" placeholder=<%=rs.getString("phoneNumber")%> required>
                </div>
                
        <%
				}
	   		}
	   		catch(Exception e){
	   			e.printStackTrace();
	   		}
        %>       
                
                <div class="input-group">
                    <label>Gender</label>
                    <select name="gender">
                    	<option name="male">Male</option>
                    	<option name="female">Female</option>
                    </select>
                </div>
            <input type="submit" name="submit" value="Update User" class="btn">
        </form>
    </div>
	
</body>
</html>