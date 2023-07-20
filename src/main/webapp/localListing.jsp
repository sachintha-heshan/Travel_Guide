<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>TourGuide - Places</title>
	<link rel="stylesheet" href="./css/listingPage.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<%
		try{
			String id = request.getParameter("id");
			int provinceID = Integer.parseInt(id);
			
			String sql = "select * from province where provinceID="+provinceID+"";
			stmt = conn.createStatement();
			rs =  stmt.executeQuery(sql);
		
			while(rs.next()){
	%>
	<div class="country-info">
      <div class="row">
        <div class="left">
          <img src="./images/provinces/<%=rs.getString("imageFileName") %>" alt="Snow">
        </div>
        <div class="middle">
          <h2><%=rs.getString("provinceName")%></h2><br>
          <b>Capital: <%=rs.getString("capital")%></b><br><br>
          <b>Districts: <%=rs.getString("districts")%></b><br><br>
          <p>
            <%=rs.getString("description")%>
          </p>
        </div>
        <div class="right">
          <iframe src="<%=rs.getString("embedLink")%>" width="350" height="205" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>
    
    <p class="main-title">Places to travel</p>
    
	<%
			}
		}
	   	catch(Exception e){
	   			e.printStackTrace();
	   	}
    %>
    
    <div class="row">
    	<%
      	String id = request.getParameter("id");
		int provinceID = Integer.parseInt(id);
      		
    	String getBlogDetails = "select * from locallistings where province = (select provinceName from province where provinceID="+provinceID+")";
    	stmt = conn.createStatement();
    	rs =  stmt.executeQuery(getBlogDetails);
      		
      		while(rs.next()){
        		String ids = rs.getString("listingID");
		%>
		
        <div class="column">
          <a href="localPlace.jsp?id=<%= ids%>"><img src="./images/localPlaces/<%=rs.getString("imageFileName1")%>" alt="Snow" style="width:100%"></a>
          <span><%=rs.getString("placeName") %></span>
        </div>
        <%
	        }
   		%>
    </div>
    
    <%@include file="./footer.jsp" %>
    
</body>
</html>