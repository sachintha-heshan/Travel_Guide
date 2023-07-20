<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Signup - Tour Guide</title>
    <link rel="stylesheet" href="./css/signup.css">
</head>
<body>
	<div class="form-group">
        <h2>Registration</h2>
        <form action="userRegisterServlet" method="POST">
            <div class="row">
                <div class="input-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" autocomplete="off" required>
                </div>
            </div>
            <div class="row">
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="username" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" autocomplete="off" required>
                </div>
            </div>
            <div class="row">
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" id="pass" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Confirm Password</label>
                    <input type="password" name="cpassword" id="cpass" autocomplete="off" required>
                </div>
            </div>
            <div class="row">
                <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="number" autocomplete="off" required>
                </div>
                <div class="input-group">
                    <label>Gender</label><br>
                    <input type="radio" name="gender" value="Male">&nbsp; Male &nbsp;
                    <input type="radio" name="gender" value="Female">&nbsp; Female
                </div>
            </div>
            <input type="submit" class="btn" name="submit">
        </form>
        <a href="./login.jsp" class='a-link'>I have an account</a>
        <div class="custom-message">
        </div>
    </div>
</body>
</html>