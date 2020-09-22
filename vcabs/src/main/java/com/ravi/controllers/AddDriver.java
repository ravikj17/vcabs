package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ravi.beans.DriverBean;
import com.ravi.dao.DriverDAO;
import com.ravi.dao.DriverDAOImpl;

/**
 * Servlet implementation class AddDriver
 */

@WebServlet("/adddriver")
public class AddDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddDriver() {
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
		DriverBean driver = new DriverBean();
		try {
			driver.setFirstName(request.getParameter("firstname"));
			driver.setLastName(request.getParameter("lastname"));
			driver.setDriverId(request.getParameter("driverid"));
			driver.setDob(request.getParameter("dob"));
			driver.setMobileNumber(request.getParameter("mobilenumber"));
			driver.setVehicleNumber(request.getParameter("vehiclenumber"));
			driver.setPlan(request.getParameter("plan"));
			driver.setPassword(request.getParameter("password"));
			dd.insertDriver(driver);
		} catch (Exception e) {
			System.out.println(e);
		}
		request.setAttribute("message", "Driver added");
		request.getRequestDispatcher("admin.jsp").forward(request, response);
		;
	}

}
