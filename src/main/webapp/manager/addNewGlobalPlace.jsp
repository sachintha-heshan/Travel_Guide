<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add new province - TourGuide</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
	
	<div class="content">
        <div class="title">
            <h2>Add a new Place</h2>
        </div>
        <form action="../insertGlobalPlace" class="form-group" method="POST" enctype="multipart/form-data">
            <div class="input-group">
                <label>Enter Place Name</label>
                <input type="text" name="placeName" required autocomplete="off" placeholder="Garden of the Gods">
            </div>
            
            <div class="input-group">
                <label>Enter the Country</label>
                <select name="country">
            <%
				Connection conn;
				Statement stmt;
				ResultSet rs;
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide","root","root");
				
				String sql = "select * from country";
				stmt = conn.createStatement();
				
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
			%>
                <option value="<%=rs.getString("countryName")%>"><%=rs.getString("countryName") %></option>
            <%
           		}
            %>
            	</select>
            </div>
            
            <div class="input-group">
                <label>Enter the Location</label>
                <input type="text" name="location" required autocomplete="off" placeholder="Colarado">
            </div>
            <div class="input-group">
                <label>Enter age gaps</label>
                <input type="text" name="ageGap" required autocomplete="off" placeholder="4-80">
            </div>
            <div class="input-group">
                <label>Enter Max Group Size</label>
                <input type="text" name="groupSize" required autocomplete="off" placeholder="100 pre group">
            </div>
            <div class="input-group">
                <label>Enter time duration</label>
                <input type="text" name="timeDuration" required autocomplete="off" placeholder="10 hour">
            </div>
            <div class="input-group">
                <label>Enter start time</label>
                <input type="text" name="startTime" required autocomplete="off" placeholder="08:00:00 A.M">
            </div>
            <div class="input-group">
                <label>Enter Languages</label>
                <input type="text" name="languages" required autocomplete="off" placeholder="English / Dutch">
            </div>
            <div class="input-group">
                <label>Enter price</label>
                <input type="text" name="price" required autocomplete="off" placeholder="$99">
            </div>
            <div class="input-group">
                <label>Enter travel agency name</label>
                <input type="text" name="agencyName" required autocomplete="off" placeholder="OceanAir">
            </div>
            <div class="input-group">
                <label>Enter description</label>
                <textarea name="description" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>What's Include</label>
                <textarea name="whatsInclude" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>What to Expect</label>
                <textarea name="whatExpect" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>Departure and Return</label>
                <textarea name="dandr" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>Embed Location Link</label>
                <textarea name="embedLink" id="" cols="116" rows="10" required></textarea>
            </div>
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
            <input type="submit" name="submit" value="Add Place" class="btn">
        </form>
    </div>
</body>
</html>