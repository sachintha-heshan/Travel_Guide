package com.feedback;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class insert_feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fullName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phoneNumber");
		String rating = request.getParameter("rating");
		String message = request.getParameter("message");
		
		boolean isTrue = feedbackDBUtil.insertcustomer(name, email, phone, rating, message);
		
		if(isTrue == true) {
			response.sendRedirect("feedback.jsp");
		}
		else {
			response.sendRedirect("feedback.jsp");
		}
		
	}

}
