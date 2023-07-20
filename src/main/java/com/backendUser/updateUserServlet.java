package com.backendUser;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.backendUser.userDBUtil;

public class updateUserServlet extends HttpServlet {
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
		
		System.out.println(userID);
		
		boolean isTrue;
		isTrue = userDBUtil.updateUser(userID, firstName, lastName, username, email, password, phoneNumber, gender);
		
		if(isTrue == true) {
			response.sendRedirect("manager/userList.jsp");
		}else {
			response.sendRedirect("manager/updateUser.jsp");
		}
	}

}
