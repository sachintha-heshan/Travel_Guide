package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class userUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("number");
		String gender = request.getParameter("gender");
		
		String id = request.getParameter("userID");
		int userID = Integer.parseInt(id);
		
		boolean isTrue = userDBUtil.updateUser(userID, firstName, lastName, username, email, password, phoneNumber, gender);
		
		if (isTrue == true) {
			response.sendRedirect("profile.jsp");
		} 
		else{
			response.sendRedirect("updateProfile.jsp");
		}
	}

}
