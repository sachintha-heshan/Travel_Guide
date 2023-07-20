package com.manager;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.manager.managerDBUtil;

public class deleteManager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("delete");
		int managerID = Integer.parseInt(id);
		
		boolean isTrue = managerDBUtil.deleteManager(managerID);
		
		if(isTrue == true) {
			response.sendRedirect("admin/managerList.jsp");
		}

	}
}
