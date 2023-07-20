<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Profile - TourGuide</title>
	<link rel="stylesheet" href="./css/updateProfile.css">
	<link rel="stylesheet" href="./css/profile.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<div class="hero-image">
        <div class="hero-text">
          <h1>Welcome to TourGuide</h1>
          <p>Enjoy world best travel experience with us</p>
        </div>
    </div>
    
    <div class="form-group">
        <form action="userUpdateServlet" method="POST">
            <div class="row">
            	<%
            		String username = (String)session.getAttribute("username");
            		
            		String sql = "select * from user where username='"+username+"'";
            		stmt = conn.createStatement();
            		rs =  stmt.executeQuery(sql);
  					
            		while(rs.next()){
            	%>
            		<input type="hidden" name="userID" value="<%= rs.getString("userID")%>">
            	
                <div class="input-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" placeholder="<%= rs.getString("firstName")%>" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" placeholder="<%= rs.getString("lastName")%>" autocomplete="off" required>
                </div>
            </div>
            <div class="row">
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="username" placeholder="<%= rs.getString("username")%>" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" placeholder="<%= rs.getString("email")%>" autocomplete="off" required>
                </div>
            </div>
            <div class="row">
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="<%= rs.getString("password")%>" id="pass" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Confirm Password</label>
                    <input type="password" name="cpassword" placeholder="<%= rs.getString("password")%>" id="cpass" autocomplete="off" required>
                </div>
            </div>
            <div class="row">
                <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="number" placeholder="<%= rs.getString("phoneNumber")%>" autocomplete="off" required>
                </div>
           	<%
     			}
     		%>
                <div class="input-group">
                    <label>Gender</label><br>
                    <input type="radio" name="gender" value="Male">&nbsp;<span class="gender"> Male </span>&nbsp;
                    <input type="radio" name="gender" value="Female">&nbsp;<span class="gender"> Female </span>
                </div>
            </div>
            <input type="submit" class="btn" name="submit" value="Update Profile">
        </form>
        <div class="custom-message">
        </div>
    </div>
    
    <%@include file="./footer.jsp" %>
</body>
</html>