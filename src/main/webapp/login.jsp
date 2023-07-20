<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login Page - Tour Guide</title>
	<link rel="stylesheet" href="./css/login.css">
</head>
<body>
	<div class="loginBox">
        <img src="./images/login_page_icon.png" alt="icon" class="avatar">
        <h1>Login Here</h1>
        <form action="userLoginServlet" method="POST">
            <label>Username / Email</label>
            <input type="text" name="username" placeholder="Enter username or email" autocomplete="off">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" autocomplete="off">
            <input type="submit" name="submit" value="Login" class="btn">
            <a href="./signup.jsp">Don't have an account?</a>
        </form>
    </div>
</body>
</html>