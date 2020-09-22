package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ravi.beans.RideBean;
import com.ravi.dao.RideDAO;
import com.ravi.dao.RideDAOImpl;

/**
 * Servlet implementation class AllocateDriver
 */
@WebServlet("/AllocateDriver")
public class AllocateDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AllocateDriver() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		RideDAO rd = new RideDAOImpl();
		RideBean ride = rd.getRideBean(userid);
		ride.setDriverId(request.getParameter("driverid"));
		rd.updateRide(ride);
		request.setAttribute("userid", userid);
		request.getRequestDispatcher("admin.jsp").forward(request, response);

	}

}
