<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Feedback - Tour Guide</title>
    <link rel="stylesheet" type="text/css" href="./css/feedback.css">
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>

	<div class="container">
		<div class="contact-box">
			<div class="left"></div>
			<div class="right">
				<h2>FeedBack</h2>
				<p>Please help us to serve you better by taking a couple of minutes.</p><br>
				<form action="insert_feedback" method="POST">
					<input type="text" class="field" placeholder="Your Name" name="fullName" required autocomplete="off">
					<input type="text" class="field" placeholder="Your Email" name="email" required autocomplete="off">
					<input type="text" class="field" placeholder="Phone" name="phoneNumber" required autocomplete="off">
					<p>How satisfied were you with our Service?</p><br>
					<input type="radio" name="rating" value="excellent"><label>Excellent</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="rating" value="good"><label>Good</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="rating" value="neutral"><label>Neutral</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="rating" value="poor"><label>Poor</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<textarea placeholder="Message" class="field" name="message"></textarea>
					<!-- <button class='btn' name='submit'>Submit FeedBack</button> -->
					
					<%
		          	  	if(session.getAttribute("username") == null){
		          	  	%>
		          	  		<button class="btn" disabled><a href='login.jsp' class='link'>You're not login</a></button>
		          	  	<%
		          	  	}
		          	  	else{
		          	  	%>
			      	  		<button class="btn" name="submit">Submit FeedBack</button>
		      	  		<%
		          	  	}
          	  		%>			
				</form>
			</div>
		</div>
	</div>

	<%@include file="./footer.jsp" %>
</body>
</html>