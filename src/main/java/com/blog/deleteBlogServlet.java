package com.blog;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class deleteBlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("delete");
		int blogID = Integer.parseInt(id);
		
		boolean isTrue = blogDBUtil.deleteArticle(blogID);
		
		if(isTrue == true) {
			response.sendRedirect("admin/articleList.jsp");
		}
	}

}
