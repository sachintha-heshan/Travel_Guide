<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Partnership - Tour Guide</title>
    <link rel="stylesheet" href="./css/gallery.css">
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
    
    <div class="full-img" id="fullImgBox">
        <img src="../images/our_other_brands/1.png" id="fullImg">
        <span onclick="closeFullImg()">X</span>
    </div>
    <div class="img-gallery">
        <img src="./images/our_other_brands/1.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/2.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/3.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/4.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/5.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/6.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/7.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/8.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/9.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/10.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/11.png" onclick="openFullImg(this.src)">
        <img src="./images/our_other_brands/12.png" onclick="openFullImg(this.src)">
    </div>
    
    <%@include file="./footer.jsp" %>
    	
   	<script>
       var fullImgBox = document.getElementById("fullImgBox");
       var fullImg = document.getElementById("fullImg");

       function openFullImg(pic){
           fullImgBox.style.display="flex";
           fullImg.src = pic;
       }

       function closeFullImg(){
           fullImgBox.style.display="none";
       }
    </script>
</body>
</html>