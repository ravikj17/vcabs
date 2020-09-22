package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ravi.beans.RideBean;
import com.ravi.dao.RideDAO;
import com.ravi.dao.RideDAOImpl;

/**
 * Servlet implementation class AddRide
 */
@WebServlet("/addride")
public class AddRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddRide() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RideDAO rd = new RideDAOImpl();
		RideBean ride = new RideBean();
		try {
			ride.setUserid(request.getParameter("userid"));
			ride.setSource(request.getParameter("source"));
			ride.setDestination(request.getParameter("destination"));
			ride.setPlan(request.getParameter("plan"));
			ride.setStatus(request.getParameter("submit"));
			ride.setFare(Double.parseDouble(request.getParameter("fare")));
			ride.setLocation("null");
			rd.insertRide(ride);

		} catch (Exception e) {
			System.out.println(e);
		}
		HttpSession session = request.getSession();
		session.setAttribute("status", "confirmed");
		request.setAttribute("ridemessage", "booking confirmed, kindly check status");
		request.getRequestDispatcher("booking.jsp").forward(request, response);
	}

}
