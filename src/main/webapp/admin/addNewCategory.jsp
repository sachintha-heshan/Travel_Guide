<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add New Category - Tour Guide</title>
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Add new category</h2>
        </div>
        <form action="../insertCategoryServlet" class="form-group" method="POST" enctype="multipart/form-data">
            <div class="input-group">
                <label>Enter Category name</label>
                <input type="text" name="categoryName" required autocomplete="off">
            </div>
            <div class="input-group">
                <label>Upload Category Image</label>
                <input type="file" name="image">
            </div>
            <div class="input-group">
                <label>Upload Banner Image</label>
                <input type="file" name="bannerImage">
            </div>
            <input type="submit" name="submit" value="Add Category" class="btn">
        </form>
    </div>
</body>
</html>