package com.contactus;

import jakarta.servlet.RequestDispatcher;


import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class insert_contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String message = request.getParameter("message");
		
		boolean isTrue = contactusDBUtil.insertcontactus(name, email, mobile, message);
		
		if(isTrue == true) {
			response.sendRedirect("contactus.jsp");
		}
		else {
			response.sendRedirect("contactus.jsp");
		}
	}

}
