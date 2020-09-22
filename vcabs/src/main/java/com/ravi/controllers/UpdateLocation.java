package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ravi.dao.RideDAO;
import com.ravi.dao.RideDAOImpl;

/**
 * Servlet implementation class UpdateLocation
 */
@WebServlet("/updatelocation")
public class UpdateLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateLocation() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String driverid = (String) session.getAttribute("driverid");
		String location = request.getParameter("location");
		RideDAO rd = new RideDAOImpl();
		rd.updateLocation(driverid, location);
		request.getRequestDispatcher("driverpage.jsp").forward(request, response);

	}

}
