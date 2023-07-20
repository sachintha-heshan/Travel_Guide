package com.manager;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.manager.managerDBUtil;

public class managerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		isTrue = managerDBUtil.validate(username, password);
		
		if (isTrue == true) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("manager/dashboard.jsp");
		} 
		else{
			response.sendRedirect("manager/index.jsp");
		}
	}

}
