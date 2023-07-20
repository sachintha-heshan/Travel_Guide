<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Search Result - TourGuide</title>
	<link rel="stylesheet" href="./css/searchResult.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<section class="hero-section">
      <div class="card-grid">
      
      	<%
			try{
				String name = request.getParameter("searchQuery");
				
				String sql = "select listingID, placeName, country, imageFileName1 from globallistings where placeName LIKE '%"+name+"%'";
				//out.println(sql);
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql);
			
				while(rs.next()){
					String id = rs.getString("listingID");
		%>
		
        <a class="card" href="globalPlace.jsp?id=<%= id%>">
          <img src="./images/globalPlaces/<%=rs.getString("imageFileName1") %>" alt="Snow" class="card__background" width="290px" height="400px">
          <div class="card__content">
            <p class="card__category"><%=rs.getString("country")%></p>
            <h3 class="card__heading"><%=rs.getString("placeName")%></h3>
          </div>
        </a>
        
        <%
				}
			}
		   	catch(Exception e){
		   			e.printStackTrace();
		   	}
    	%>
    	
    	
    	<%
			try{
				String name = request.getParameter("searchQuery");
				
				String sql = "select listingID, placeName, country, imageFileName1 from locallistings where placeName LIKE '%"+name+"%'";
				//out.println(sql);
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql);
			
				while(rs.next()){
					String id = rs.getString("listingID"); 
		%>
		
        <a class="card" href="localPlace.jsp?id=<%= id%>">
          <img src="./images/localPlaces/<%=rs.getString("imageFileName1") %>" alt="Snow" class="card__background" width="290px" height="400px">
          <div class="card__content">
            <p class="card__category"><%=rs.getString("country")%></p>
            <h3 class="card__heading"><%=rs.getString("placeName")%></h3>
          </div>
        </a>
        
        <%
				}
			}
		   	catch(Exception e){
		   			e.printStackTrace();
		   	}
    	%>
    	
    	
      <div>
    </section>
    
    <%@include file="./footer.jsp" %>
</body>
</html>