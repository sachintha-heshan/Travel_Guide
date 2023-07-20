package com.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class userRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("number");
		String gender = request.getParameter("gender");
		
		boolean isTrue;
		
		isTrue = userDBUtil.insertUser(firstName, lastName, username, email, password, phoneNumber, gender);
		
		if(isTrue == true) {
			response.sendRedirect("login.jsp");
		}else {
			response.sendRedirect("signup.jsp");
		}
		
		
	}

}
