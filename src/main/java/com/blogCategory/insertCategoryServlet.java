package com.blogCategory;

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

import com.blogCategory.categoryDBUtil;

@MultipartConfig
public class insertCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoryName = request.getParameter("categoryName");
		
		Part file = request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/"+imageFileName;
		
		Part bannerImage = request.getPart("bannerImage");
		String bannerFileName = bannerImage.getSubmittedFileName();
		String uploadPath2 = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/categoryBannerImage/"+bannerFileName;
		
		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			
			FileOutputStream fos2 = new FileOutputStream(uploadPath2);
			InputStream is2 = bannerImage.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
			byte[] data2 = new byte[is2.available()];
			is2.read(data2);
			fos2.write(data2);
			fos2.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		boolean isTrue = categoryDBUtil.insertCategory(categoryName, imageFileName, uploadPath, bannerFileName, uploadPath2);
		
		if(isTrue == true) {
			//RequestDispatcher dis = request.getRequestDispatcher("/admin/displayArticleList.jsp");
			//dis.forward(request, response);
			//List<blog> searchInfo = blogDBUtil.fetchData();
			//request.setAttribute("searchInfo", searchInfo);
			
			response.sendRedirect("admin/categoryList.jsp");
		}
	}

}
