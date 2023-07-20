package com.payment;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class insertPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String suserID = request.getParameter("userID");
		String country = request.getParameter("country");
		String placeName = request.getParameter("placeName");
		String travelAgencyName = request.getParameter("travelAgencyName");
		String adults = request.getParameter("adults");
		String child = request.getParameter("child");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		String nameOnCard = request.getParameter("nameOnCard");
		String cardNumber = request.getParameter("cardNumber");
		
		int userID = Integer.parseInt(suserID);
		
		boolean isTrue = paymentDBUtil.insertPayment(country, placeName, travelAgencyName, adults, child, price, date, nameOnCard, cardNumber, userID);
		
		if(isTrue == true) {
			response.sendRedirect("profile.jsp");
		}
	}
}
