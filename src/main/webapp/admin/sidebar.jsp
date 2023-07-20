<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("index.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title></title>
	<link rel="stylesheet" href="./css/sidebar.css">
</head>
<body>
	<!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">
            <img src="./images/logo.png">
            <span>Dashboard</span>
        </div>

        <a href="./dashboard.jsp">Home</a>
        <a href="./countryList.jsp">View Countries</a>
        <a href="./articleList.jsp">View all articles</a>
        <a href="./provinceList.jsp">View all provinces</a>
        <a href="./categoryList.jsp">View Category List</a>
        <a href="./managerList.jsp">View Manager List</a>
        <!--<a href="" class="lower-left">Logout</a>-->
        <form action='../alogoutServlet' method="get">
	    	<a href="../alogoutServlet" class="lower-left">Logout</a>
	    </form>
    </div>
    <!-- End of the sidebar -->

    <div class="profile">
        <img src="./images/avatar.png" alt="">
    </div>
</body>
</html>