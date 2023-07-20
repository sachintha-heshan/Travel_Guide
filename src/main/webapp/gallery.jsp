<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Gallery - Tour Guide</title>
    <link rel="stylesheet" href="./css/gallery.css">
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
    
    <div class="full-img" id="fullImgBox">
        <img src="./images/gallery/1.jpg" id="fullImg">
        <span onclick="closeFullImg()">X</span>
    </div>
    <div class="img-gallery">
        <img src="./images/gallery/01.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/02.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/03.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/04.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/05.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/06.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/07.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/08.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/09.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/10.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/11.png" onclick="openFullImg(this.src)">
        <img src="./images/gallery/12.png" onclick="openFullImg(this.src)">
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