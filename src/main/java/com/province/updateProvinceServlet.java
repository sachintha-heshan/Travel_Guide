package com.province;

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

@MultipartConfig
public class updateProvinceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String provinceName = request.getParameter("provinceName");
		String capital = request.getParameter("capital");
		String districts = request.getParameter("districts");
		String description = request.getParameter("description");
		String embedLink = request.getParameter("embedLink");
		
		Part file = request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/"+imageFileName;
		
		String id = request.getParameter("provinceID");
		int provinceID = Integer.parseInt(id);

		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		boolean isTrue = provinceDBUtil.updateProvince(provinceID, provinceName, capital, districts, description, embedLink, imageFileName, uploadPath);
		
		if(isTrue == true) {
			response.sendRedirect("admin/provinceList.jsp");
		}
	}

}
