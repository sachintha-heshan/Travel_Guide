<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Payment - TourGuide</title>
	<link rel="stylesheet" href="./css/payment.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<%
		String username = (String)session.getAttribute("username");
	   	String sql = "select * from user where username='"+username+"'";
		stmt = conn.createStatement();
		rs =  stmt.executeQuery(sql);
		
		String country = request.getParameter("country");
		String placeName = request.getParameter("placename");
		String travelAgencyName = request.getParameter("travelAgencyName");
		String adults = request.getParameter("adults");
		String child = request.getParameter("child");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		
		while(rs.next()){
			int id = rs.getInt("userID");
	%>
	
	<div class="container">
    <form action="insertPayment" method="POST">
        <div class="row">
        	<input type="hidden" name="userID" value="<%= id%>">
        	<input type="hidden" name="country" value="<%= country%>">
        	<input type="hidden" name="placeName" value="<%= placeName%>">
        	<input type="hidden" name="travelAgencyName" value="<%= travelAgencyName%>">
        	<input type="hidden" name="adults" value="<%= adults%>">
        	<input type="hidden" name="child" value="<%= child%>">
        	<input type="hidden" name="price" value="<%= price%>">
        	<input type="hidden" name="date" value="<%= date%>">
            <div class="col">
                <h3 class="title">billing address</h3>
                <div class="inputBox">
                    <span>Name on card :</span>
                    <input type="text" name="nameOnCard" placeholder="john deo" required>
                </div>
                <div class="inputBox">
                    <span>address :</span>
                    <input type="text" placeholder="room - street - locality" required>
                </div>
                <div class="inputBox">
                    <span>city :</span>
                    <input type="text" placeholder="colombo" required>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>state :</span>
                        <input type="text" placeholder="sri lanka" required>
                    </div>
                    <div class="inputBox">
                        <span>zip code :</span>
                        <input type="text" placeholder="123 456" required>
                    </div>
                </div>
            </div>

            <div class="col">
                <h3 class="title">payment</h3>
                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="images/card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" name="cardNumber" placeholder="1111-2222-3333-4444" required>
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" name="expDate" placeholder="january" required>
                </div>
                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" placeholder="2022" required>
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="1234" required>
                    </div>
                </div>
            </div>
        </div>
        <input type="submit" value="Confirm your payment" class="submit-btn">
    </form>
</div>

	<%
     	}
    %>
	
	<%@include file="./footer.jsp" %>
</body>
</html>