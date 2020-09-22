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
 * Servlet implementation class CancelBooking
 */
@WebServlet("/cancelbooking")
public class CancelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CancelBooking() {
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
		String userid = (String) session.getAttribute("userid");
		String submit = request.getParameter("submit");
		RideDAO rd = new RideDAOImpl();
		try {
			rd.cancelRide(userid);
		} catch (Exception e) {
			System.out.println(e);
		}
		if (submit.equals("cancel")) {
			session.setAttribute("status", "cancelled");
			request.setAttribute("cancellation", "Your ride is cancelled");
			request.getRequestDispatcher("booking.jsp").forward(request, response);
		} else if (submit.equals("completed")) {
			session.setAttribute("status", "Ride completed");
			request.setAttribute("message", "Ride completed");
			request.getRequestDispatcher("driverpage.jsp").forward(request, response);
		}
	}

}
