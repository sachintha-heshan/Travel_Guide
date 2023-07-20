package com.blog;

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
public class blogUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String shortDescription = request.getParameter("shortDescription");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		
		String id = request.getParameter("number");
		int blogID = Integer.parseInt(id);
		
		Part file = request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogImages/"+imageFileName;
		
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
		
		boolean isTrue = blogDBUtil.updateArticle(blogID, title, shortDescription, category, description, imageFileName, uploadPath);
		
		if(isTrue == true) {
			response.sendRedirect("admin/articleList.jsp");
		}
	}

}
