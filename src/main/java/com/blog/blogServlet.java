package com.blog;

import jakarta.servlet.RequestDispatcher;
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
import java.util.List;

import com.blog.blogDBUtil;
import com.blog.blog;

@MultipartConfig
public class blogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String shortDescription = request.getParameter("shortDescription");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		
		Part file = request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogImages/"+imageFileName;
		
		/* Check whether it working correctly
		System.out.println(title);
		System.out.println(category);
		System.out.println(description);
		System.out.println(imageFileName);
		System.out.println(uploadPath);*/
		
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
		
		boolean isTrue = blogDBUtil.insertArticle(title, shortDescription, category, description, imageFileName, uploadPath);
		
		if(isTrue == true) {
			//RequestDispatcher dis = request.getRequestDispatcher("/admin/displayArticleList.jsp");
			//dis.forward(request, response);
			//List<blog> searchInfo = blogDBUtil.fetchData();
			//request.setAttribute("searchInfo", searchInfo);
			
			response.sendRedirect("admin/articleList.jsp");
		}
		
		
	}

}
