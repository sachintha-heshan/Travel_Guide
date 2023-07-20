<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Contact Us - Tour Guide</title>
    <link rel="stylesheet" href="./css/contactus.css">
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>

    <div class="container">
        <div class="contact-box">
            <div class="contact-left">
                <h1>Connect With Us</h1>
                <p>If you wish to contact us via email please fill the following form and we get in touch with you at the earliest.</p>
                <form action="insert_contactus" method="POST">
                    <div class="input-row">
                        <label>Full Name</label>
                        <input type="text" name="name" placeholder="Ema Amenda" required autocomplete="off">
                    </div>
                    <div class="input-row">
                        <label>Email</label>
                        <input type="email" name="email" placeholder="emaamenda@gmail.com" required autocomplete="off">
                    </div>
                    <div class="input-row">
                        <label>Mobile Number</label>
                        <input type="text" name="mobile" placeholder="0765781204" required autocomplete="off">
                    </div>
                    <div class="input-row">
                        <label>Message</label>
                        <textarea name="message" cols="30" rows="10" placeholder="Typing..."></textarea required>
                    </div>
                    <div class="input-row">
                        <!--  <input type='submit' name='submit' value='Send'>-->
                        <%
		          	  	if(session.getAttribute("username") == null){
			          	  	%>
			          	  		<button class="r-btn" disabled><a href='login.jsp' class='link'>You're not login</a></button>
			          	  	<%
		          	  	}
		          	  	else{
			          	  	%>
				      	  		<button class="r-btn">Send</button>
			      	  		<%
		          	  	}
		          	  	%> 
                    </div>
                </form>
            </div>
            <div class="contact-right">
                <div class="details">
                    <h3>MARKETING & ADVERTISING</h3>
                    <div class="para">
                        <i class="fa-solid fa-phone"></i> 0711200220 - Address Name <br>
                        <i class="fa-solid fa-envelope"></i> tourguide@gmail.com
                    </div>   
                </div> <hr>
                <div class="details">
                    <h3>THEATER CONTACT DETAILS</h3>
                    <div class="para">
                        CCC tourguide: &nbsp;&nbsp; <i class="fa-solid fa-phone"></i> 0112083064 <br>
                        Liberty by tourguide: &nbsp;&nbsp; <i class="fa-solid fa-phone"></i> 0112325266
                    </div>
                </div> <hr>
                <div class="details">
                    <h3>HELP DESK</h3>
                    <div class="para">
                        <i class="fa-solid fa-phone"></i> ( 09.00 am - 06.00 pm Monday - Friday ) <br> &nbsp;&nbsp;&nbsp;&nbsp; 0112083063 / 0703387602 <br>
                        <i class="fa-solid fa-envelope"></i> helpdesk@touguide.com
                    </div>   
                </div>
                <div class="map">
                    <img src="./images/map.png" width="400px" height="250px">
                </div>
            </div>
        </div>
    </div>

    <%@include file="./footer.jsp" %>
</body>
</html>