package com.province;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.province.provinceDBUtil;

public class deleteProvinceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("delete");
		int provinceID = Integer.parseInt(id);
		
		boolean isTrue = provinceDBUtil.deleteProvince(provinceID);
		
		if(isTrue == true) {
			response.sendRedirect("admin/provinceList.jsp");
		}
	}

	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}*/

}
