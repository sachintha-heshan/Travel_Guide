<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Manager Login - Tour Guide</title>
	<link rel="stylesheet" href="./css/login.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<div class="loginBox">
        <img src="./images/login_page_icon.png" alt="icon" class="avatar">
        <h1>Manager Login</h1>
        <form action="../managerLoginServlet" method="POST">
            <label>Username / Email</label>
            <input type="text" name="username" placeholder="Enter username or email" autocomplete="off">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" autocomplete="off">
            <input type="submit" name="submit" value="Login" class="btn">
            <!--<a href="./signup.jsp">Don't have an account?</a>-->
        </form>
    </div>
</body>
</html>