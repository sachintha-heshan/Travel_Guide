<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>TourGuide - Travel with us</title>
	<link rel="stylesheet" href="./css/header.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
    <script src="https://kit.fontawesome.com/fd20cad007.js" crossorigin="anonymous"></script>
</head>
<body>
	<header>
      <nav>
          <a href="index.jsp"><div class="icon"><h1>Tour<b style="color:lightgreen">G</b>uide</h1></div></a>
          <ol>
          	  <%
          	  	if(session.getAttribute("username") == null){
          	  	%>
          	  		<li><a href='signup.jsp' class='link'>Signup</a></li>
              		<li><a href='login.jsp' class='link'>Login</a></li>
          	  	<%
          	  	}
          	  	else{
          	  	%>
	      	  		<li><a href='./profile.jsp' class='link'>Profile Page</a></li>
	      	  		<form action='./logoutServlet' method="GET">
	      	  			<li><a href='./logoutServlet' class='link'>Logout</a></li>
	      	  		</form>
              		
      	  		<%	
      	  		//System.out.println(session.getAttribute("username"));
          	  	}
          	  %>
          </ol>
      </nav>
    </header>
</body>
</html>