<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add New Manager - TourGuide</title>
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Add new Manager</h2>
        </div>
        <form action="../insertManagerServlet" class="form-group" method="POST">
            <div class="input-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="username" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" id="pass" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Confirm Password</label>
                    <input type="password" name="cpassword" id="cpass" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="number" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Gender</label>
                    <select name="gender">
                    	<option name="male">Male</option>
                    	<option name="female">Female</option>
                    </select>
                </div>
            <input type="submit" name="submit" value="Add Manager" class="btn">
        </form>
    </div>
	
</body>
</html>