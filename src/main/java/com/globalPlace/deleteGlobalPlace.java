package com.globalPlace;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.globalPlace.globalPlaceDBUtil;

public class deleteGlobalPlace extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("delete");
		int listingID = Integer.parseInt(id);
		
		boolean isTrue = globalPlaceDBUtil.deletePlace(listingID);
		
		if(isTrue == true) {
			response.sendRedirect("manager/globalListing.jsp");
		}
	}

}
