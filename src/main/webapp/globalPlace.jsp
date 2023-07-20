<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Global Place - Tour Guide</title>
	<link rel="stylesheet" href="./css/faq.css">
	<link rel="stylesheet" href="./css/place.css">
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./header.jsp" %>
	
	<%
		String id = request.getParameter("id");
		int listID = Integer.parseInt(id);
		
		String sql = "select * from globallistings where listingID="+listID+"";
		
		stmt = conn.createStatement();
		rs =  stmt.executeQuery(sql);
	
		while(rs.next()){
	%>
	
	<div class="house-details">
    <div class="house-title">
        <h1><%=rs.getString("placeName")%></h1>
        <div class="row">
            <div>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i> 
                <i class="fas fa-star-half-alt"></i>
                <span>245 Reviews</span>
            </div>
            <div>
                <p><%=rs.getString("location")%>, <%=rs.getString("country")%></p>
            </div>
        </div>
    </div>
    
    <div class="gallery">
        <div class="gallery-img-1"><img src="./images/globalPlaces/<%=rs.getString("imageFileName1")%>" alt=""></div>
        <div><img src="./images/globalPlaces/<%=rs.getString("imageFileName2")%>" alt=""></div>
        <div><img src="./images/globalPlaces/<%=rs.getString("imageFileName3")%>" alt=""></div>
        <div><img src="./images/globalPlaces/<%=rs.getString("imageFileName4")%>" alt=""></div>
        <div><img src="./images/globalPlaces/<%=rs.getString("imageFileName5")%>" alt=""></div>
    </div>
    
    <hr class="linex">

    <div class="cz">
        <ul class="details-list left">
            <p><%=rs.getString("description")%></p>
            <br><br><br>

            <h3>Highlights</h3><br><br>
            <li><i class="fa-solid fa-arrows-to-dot"></i>Save time tick off multiple top Amsterdam landmarks in a day</li>
            <li><i class="fa-solid fa-arrows-to-dot"></i>Travel in an eco friendly way the boat has an electric engine</li>
            <li><i class="fa-solid fa-arrows-to-dot"></i>Flexible tour choose from a variety of daily start times</li>
        </ul>

        <ul class="details-list right">
                <li><i class="fa-solid fa-user-group"></i>Ages <%=rs.getString("ageGap")%>, max of <%=rs.getString("groupSize")%> per group</li>
                <li><i class="fa-solid fa-clock-rotate-left"></i>Duration: <%=rs.getString("timeDuration")%></li>
                <li><i class="fa-solid fa-clock"></i>Start time: <%=rs.getString("startTime")%></li>
                <li><i class="fa-solid fa-ticket"></i>Ticket type: Mobile</li>
                <li><i class="fa-solid fa-language"></i>Language: <%=rs.getString("languages")%></li>
                <li><i class="fa-solid fa-money-check-dollar"></i><%=rs.getString("price")%> pre adult</li>
        </ul>
    </div>
    
    <hr class="line">

    <div class="lz">
        <div class="container left">
            <h2>Travelers' Choice Best of the Best</h2><br>
            <div class="accordion">
                <div class="accordion-item">
                <button id="accordion-button-2" aria-expanded="false">
                    <span class="accordion-title">What's Include</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p><%=rs.getString("whatsInclude")%></p>
                </div>
                </div>
                <div class="accordion-item">
                <button id="accordion-button-3" aria-expanded="false">
                    <span class="accordion-title">What to except</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p><%=rs.getString("whatsExpect")%></p>
                </div>
                </div>
                <div class="accordion-item">
                <button id="accordion-button-4" aria-expanded="false">
                    <span class="accordion-title">Departure and Return</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p><%=rs.getString("depature_and_return")%></p>
                </div>
                </div>
                <div class="accordion-item">
                <button id="accordion-button-5" aria-expanded="false">
                    <span class="accordion-title">Accessibility</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p>
                        <li>Not wheelchair accessible</li>
                        <li>Stroller accessible</li>
                        <li>Service animals allowed</li>
                        <li>Near public transportation</li>
                    </p>
                </div>
                </div>
                <div class="accordion-item">
                <button id="accordion-button-3" aria-expanded="false">
                    <span class="accordion-title">Additional Information</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p>
                        <li>Confirmation will be received at time of booking</li>
                        <li>It is colder on the water, please bring warm clothing and don't get surprised by the chilly Dutch weather.</li>
                        <li>Our stewards in the bright orange shirts are there to inform and help you.</li>
                        <li>A fairly big step has to be made into the boat. Our stewards will assist you with this.</li>
                        <li>When rain is predicted, the boat will be covered.</li>
                        <li>You are always welcome to change your ticket if it rains and you'd rather stay inside :)</li>
                        <li>If you are unhappy with your experience, please let us know directly or come by the office at Leliegracht 42 (around the corner). </li>
                        <li>No bachelor / birthday party groups allowed, please call us for a private boat option.</li>
                        <li>Tour available for free for infants (0-2 years old).</li>
                        <li>Most travelers can participate.</li>
                        <li>This experience requires good weather. If it’s canceled due to poor weather, you’ll be offered a different date or a full refund.</li>
                        <li>This tour/activity will have a maximum of 30 travelers.</li>
                    </p>
                </div>
                </div>
                <div class="accordion-item">
                <button id="accordion-button-5" aria-expanded="false">
                    <span class="accordion-title">Cancellation Policy</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p>
                        For a full refund, cancel at least 24 hours in advance of the start date of the experience.
                    </p>
                </div>
                </div>
                <div class="accordion-item">
                <button id="accordion-button-3" aria-expanded="false">
                    <span class="accordion-title">Covid Safety</span>
                    <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                    <p>
                        <b>What you can expect during your visit</b>
                        <li>Paid stay at home policy for staff with symptoms</li>
                        <li>Contactless payment for gratuities and add-ons</li>
                    </p>
                </div>
                </div>
                <div class="accordion-item">
                    <button id="accordion-button-3" aria-expanded="false">
                        <span class="accordion-title">Help</span>
                        <span class="icon" aria-hidden="true"></span>
                    </button>
                <div class="accordion-content">
                    <p>
                        If you have questions about this tour or need help making your booking, we d be happy to help. Just call the number below: +1 855 275 5071
                    </p>
                </div>
                </div>
            </div>
        </div>

        <div class="bform right">
            <h2>Travel with Us</h2><br>
            <form action="./payment.jsp" method="get">
            	<input type="hidden" name="country" value="<%=rs.getString("country")%>">
            	<input type="hidden" name="placename" value="<%=rs.getString("placeName")%>">
            	<input type="hidden" name="travelAgencyName" value="<%=rs.getString("travelAgencyName")%>">
                <label>No of Adults: </label> <input type="text" name="adults" placeholder="ages 18 or above" id="adult" onchange="calculateAmount()">
                <label>No of Children: (half of price)</label> <input type="text" name="child" placeholder="ages 4-17" id="child" onchange="calculateAmount()">
                <label>Price: </label> <input type="text" id='totalPrice' name="price" readonly>
                <label>Choose a Date: </label> <input type="date" name="date">
                <!--  <button class="r-btn">Reserve</button>-->
                
                <%
          	  	if(session.getAttribute("username") == null){
          	  	%>
          	  		<button class="r-btn" disabled><a href='login.jsp' class='link'>You're not login</a></button>
          	  	<%
          	  	}
          	  	else{
          	  	%>
	      	  		<button class="r-btn">Reserve</button>
      	  		<%
          	  	}
          	  	%>
                
            </form>
        </div>
    </div>
    
    <hr class="line">

    <div class="map">
        <h3>Location on map</h3>
        <iframe src="<%=rs.getString("embedLink")%>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <b><%=rs.getString("location")%>, <%=rs.getString("country")%></b>
        <p>It's like a home away from home.</p>
    </div>
    <hr class="line">

    <div class="host">
        <img src="./images/singlePlace/host.png">
        <div>
        <h2>By <%=rs.getString("travelAgencyName")%></h2>
        <p>
            <span>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </span>&nbsp; &nbsp; 245 reviews &nbsp; &nbsp; Response rate 100% &nbsp; &nbsp; Response time: 60 min
        </p>
        </div>
    </div>
        <a href="#" class="contact-host">Contact Host</a>
    </div>
    
    <script>
        const items = document.querySelectorAll('.accordion button');

        function toggleAccordion(){
            const itemToggle = this.getAttribute('aria-expanded');

            for(i = 0; i < items.length; i++){
                items[i].setAttribute('aria-expanded', 'false');
            }
            
            if(itemToggle == 'false') {
                this.setAttribute('aria-expanded', 'true');
            }
        }
        items.forEach((item) => item.addEventListener('click', toggleAccordion));
        

        function calculateAmount(){
            var adultCount = document.getElementById('adult').value;
            var childCount = document.getElementById('child').value;
            
            var x = "<%=rs.getString("price")%>";
            var y = x.substring(1,6);
            
            var adultTotal = adultCount * y;
            var childTotal = (childCount * y)/2;

            var sum = adultTotal + childTotal;
            var x = document.getElementById('totalPrice');
            x.value= sum;
        }
    </script>
    
    
    <%
		}
    %>
    
    <%@include file="./footer.jsp" %>
    
	
</body>
</html>