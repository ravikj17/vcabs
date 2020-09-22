package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ravi.service.Service;

/**
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public payment() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		double distance = Double.parseDouble(request.getParameter("distance"));
		String plan = request.getParameter("plan");
		Service service = new Service();
		double fare = service.fare(distance, plan);
		request.setAttribute("fare", fare);
		request.setAttribute("source", source);
		request.setAttribute("destination", destination);
		request.setAttribute("plan", plan);
		HttpSession session = request.getSession();
		request.setAttribute("userid", session.getAttribute("userid"));
		request.getRequestDispatcher("billing.jsp").forward(request, response);

	}

}
