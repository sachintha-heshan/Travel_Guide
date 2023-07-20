package com.globalPlace;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.globalPlace.globalPlaceDBUtil;

@MultipartConfig
public class updateglobalPlace extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String placeName = request.getParameter("placeName");
		String country = request.getParameter("country");
		String location = request.getParameter("location");
		String ageGap = request.getParameter("ageGap");
		String groupSize = request.getParameter("groupSize");
		String timeDuration = request.getParameter("timeDuration");
		String startTime = request.getParameter("startTime");
		String languages = request.getParameter("languages");
		String price = request.getParameter("price");
		String agencyName = request.getParameter("agencyName");
		String description = request.getParameter("description");
		String whatsInclude = request.getParameter("whatsInclude");
		String whatExpect = request.getParameter("whatExpect");
		String dandr = request.getParameter("dandr"); // departure and return
		String embedLink = request.getParameter("embedLink");
		
		String id = request.getParameter("number");
		int listingID = Integer.parseInt(id);
		
		Part file1 = request.getPart("image1");
		String imageFileName1 = file1.getSubmittedFileName();
		String uploadPath1 = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/"+imageFileName1;
		
		Part file2 = request.getPart("image2");
		String imageFileName2 = file2.getSubmittedFileName();
		String uploadPath2 = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/"+imageFileName2;
		
		Part file3 = request.getPart("image3");
		String imageFileName3 = file3.getSubmittedFileName();
		String uploadPath3 = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/"+imageFileName3;
		
		Part file4 = request.getPart("image4");
		String imageFileName4 = file4.getSubmittedFileName();
		String uploadPath4 = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/"+imageFileName4;
		
		Part file5 = request.getPart("image5");
		String imageFileName5 = file5.getSubmittedFileName();
		String uploadPath5 = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/"+imageFileName5;
		
		try {
			FileOutputStream fos1 = new FileOutputStream(uploadPath1);
			InputStream is1 = file1.getInputStream();
			
			FileOutputStream fos2 = new FileOutputStream(uploadPath2);
			InputStream is2 = file2.getInputStream();
			
			FileOutputStream fos3 = new FileOutputStream(uploadPath3);
			InputStream is3 = file3.getInputStream();
			
			FileOutputStream fos4 = new FileOutputStream(uploadPath4);
			InputStream is4 = file4.getInputStream();
			
			FileOutputStream fos5 = new FileOutputStream(uploadPath5);
			InputStream is5 = file5.getInputStream();
			
			byte[] data1 = new byte[is1.available()];
			is1.read(data1);
			fos1.write(data1);
			fos1.close();
			
			byte[] data2 = new byte[is2.available()];
			is2.read(data2);
			fos2.write(data2);
			fos2.close();
			
			byte[] data3 = new byte[is3.available()];
			is3.read(data3);
			fos3.write(data3);
			fos3.close();
			
			byte[] data4 = new byte[is4.available()];
			is4.read(data4);
			fos4.write(data4);
			fos4.close();
			
			byte[] data5 = new byte[is5.available()];
			is5.read(data5);
			fos5.write(data5);
			fos5.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		boolean isTrue = globalPlaceDBUtil.updatePlace(listingID, placeName, country, location, ageGap, groupSize, timeDuration, startTime, languages, price, agencyName, description, whatsInclude, whatExpect, dandr, embedLink, imageFileName1, imageFileName2, imageFileName3, imageFileName4, imageFileName5, uploadPath1, uploadPath2, uploadPath3, uploadPath4, uploadPath5);
		
		if(isTrue == true) {
			response.sendRedirect("manager/globalListing.jsp");
		}
	}

}
