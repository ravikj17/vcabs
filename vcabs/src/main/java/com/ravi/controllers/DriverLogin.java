package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ravi.beans.DriverBean;
import com.ravi.dao.DriverDAO;
import com.ravi.dao.DriverDAOImpl;

/**
 * Servlet implementation class DriverLogin
 */
@WebServlet("/driverlogin")
public class DriverLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DriverLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DriverDAO dd = new DriverDAOImpl();
		String driverid = request.getParameter("driverid");
		String password = request.getParameter("password");
		DriverBean driver = dd.getDriver(driverid, password);
		if (driver != null && driver.getFirstName() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("driverid", driverid);
			session.setAttribute("drivername", driver.getFirstName());
			response.sendRedirect("driverpage.jsp");
		} else {
			request.setAttribute("message", "Data not found, kindly register first");
			request.getRequestDispatcher("DriverLogin.jsp").forward(request, response);

		}
	}

}
