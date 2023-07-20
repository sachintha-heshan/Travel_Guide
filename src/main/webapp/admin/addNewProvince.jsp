<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add new province - TourGuide</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Add a new Province</h2>
        </div>
        <form action="../provinceServlet" class="form-group" method="POST" enctype="multipart/form-data">
            <div class="input-group">
                <label>Enter Province Name</label>
                <input type="text" name="provinceName" required autocomplete="off">
            </div>
            <div class="input-group">
                <label>Enter the Capital</label>
                <input type="text" name="capital" required autocomplete="off">
            </div>
            <div class="input-group">
                <label>Enter Districts</label>
                <input type="text" name="districts" required autocomplete="off">
            </div>
            <div class="input-group">
                <label>Enter description</label>
                <textarea name="description" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>Embed Province Link</label>
                <textarea name="embedLink" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image">
            </div>
            <input type="submit" name="submit" value="Add Province" class="btn">
        </form>
    </div>
</body>
</html>