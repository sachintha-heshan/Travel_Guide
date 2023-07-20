package com.tourguide;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.user.userDBUtil;

public class tourguideLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		isTrue = tourguideDBUtil.validate(username, password);
		
		if (isTrue == true) {
			response.sendRedirect("tourguide/success.jsp");
		} 
		else{
			response.sendRedirect("tourguide/index.jsp");
		}
	}

}
