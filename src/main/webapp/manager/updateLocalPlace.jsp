<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Place - TourGuide</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Update the Place</h2>
        </div>
        <form action="../updateLocalPlace" class="form-group" method="POST" enctype="multipart/form-data">
         	<div class="input-group">
                <label>Enter Country</label>
                <input type="text" name="country" required autocomplete="off" value="Sri lanka" readonly>
            </div>
            
            <div class="input-group">
                <label>Select the province</label>
                <select name="province">
            <%
				Connection conn;
				Statement stmt;
				ResultSet rs;
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
				
				String sql = "select * from province";
				stmt = conn.createStatement();
				
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
			%>
                <option value="<%=rs.getString("provinceName")%>"><%=rs.getString("provinceName") %></option>
            <%
           		}
            %>
            	</select>
            </div>
            
            <%
	   		try{
	   			Connection conn2;
				Statement stmt2;
				ResultSet rs2;
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
				
				String id = request.getParameter("id");
				int listingID = Integer.parseInt(id);
				
				String sql1 = "select * from locallistings where listingID="+listingID+"";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql1);
				
				while(rs.next()){
   			%>
   			
   			<input type="hidden" name="number" required autocomplete="off" placeholder=<%=rs.getString("listingID")%> value=<%=rs.getString("listingID")%> readonly>
            
            <div class="input-group">
                <label>Enter Place Name</label>
                <input type="text" name="placeName" required autocomplete="off" placeholder=<%=rs.getString("placeName")%>>
            </div>
            <div class="input-group">
                <label>Enter the Location</label>
                <input type="text" name="location" required autocomplete="off" placeholder=<%=rs.getString("location")%>>
            </div>
            <div class="input-group">
                <label>Enter age gaps</label>
                <input type="text" name="ageGap" required autocomplete="off" placeholder=<%=rs.getString("ageGap")%>>
            </div>
            <div class="input-group">
                <label>Enter Max Group Size</label>
                <input type="text" name="groupSize" required autocomplete="off" placeholder=<%=rs.getString("groupSize")%>>
            </div>
            <div class="input-group">
                <label>Enter time duration</label>
                <input type="text" name="timeDuration" required autocomplete="off" placeholder=<%=rs.getString("timeDuration")%>>
            </div>
            <div class="input-group">
                <label>Enter start time</label>
                <input type="text" name="startTime" required autocomplete="off" placeholder=<%=rs.getString("startTime")%>>
            </div>
            <div class="input-group">
                <label>Enter Languages</label>
                <input type="text" name="languages" required autocomplete="off" placeholder=<%=rs.getString("languages")%>>
            </div>
            <div class="input-group">
                <label>Enter price</label>
                <input type="text" name="price" required autocomplete="off" placeholder=<%=rs.getString("price")%>>
            </div>
            <div class="input-group">
                <label>Enter travel agency name</label>
                <input type="text" name="agencyName" required autocomplete="off" placeholder=<%=rs.getString("travelAgencyName")%>>
            </div>
            <div class="input-group">
                <label>Enter description</label>
                <textarea name="description" id="" cols="116" rows="10" required placeholder=<%=rs.getString("description")%>></textarea>
            </div>
            <div class="input-group">
                <label>What's Include</label>
                <textarea name="whatsInclude" id="" cols="116" rows="10" required placeholder=<%=rs.getString("whatsInclude")%>></textarea>
            </div>
            <div class="input-group">
                <label>What to Expect</label>
                <textarea name="whatExpect" id="" cols="116" rows="10" required placeholder=<%=rs.getString("whatsExpect")%>></textarea>
            </div>
            <div class="input-group">
                <label>Departure and Return</label>
                <textarea name="dandr" id="" cols="116" rows="10" required placeholder=<%=rs.getString("depature_and_return")%>></textarea>
            </div>
            <div class="input-group">
                <label>Embed Location Link</label>
                <textarea name="embedLink" id="" cols="116" rows="10" required placeholder=<%=rs.getString("embedLink")%>></textarea>
            </div>
            
            <%
					}
		   		}
		   		catch(Exception e){
		   			e.printStackTrace();
		   		}
        	%>
            
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image1" required>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image2" required>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image3" required>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image4" required>
            </div>
            <div class="input-group">
                <label>Enter Cover Image</label>
                <input type="file" name="image5" required>
            </div>
            <input type="submit" name="submit" value="Update the Place" class="btn">
        </form>
    </div>
	
</body>
</html>