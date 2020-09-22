package com.ravi.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ravi.beans.UserBean;
import com.ravi.dao.UserDAO;
import com.ravi.dao.UserDAOImpl;

@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginRegister() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDAO ud = new UserDAOImpl();
		String userid = request.getParameter("userid");
		String password = request.getParameter("password1");
		String submitType = request.getParameter("submit");

		UserBean user = ud.getUserBean(userid, password);
		if (submitType.equals("login") && ud.checkAdmin(userid, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", "admin");
			response.sendRedirect("admin.jsp");
		} else if (submitType.equals("login") && user != null && user.getFirstName() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userid", user.getUserid());
			session.setAttribute("uname", user.getFirstName());
			response.sendRedirect("booking.jsp");
//			request.setAttribute("message", user.getFirstName());
//			request.getRequestDispatcher("booking.jsp").forward(request, response);
		} else if (submitType.equals("register")) {

			UserBean checkUser = ud.checkAvailability(userid);
			if (checkUser.getFirstName() != null) {
				request.setAttribute("message", "Registration failed,Userid already taken");
				request.getRequestDispatcher("register.jsp").forward(request, response);
				return;
			}
			try {
				user.setFirstName(request.getParameter("firstname"));
				user.setLastName(request.getParameter("lastname"));
				user.setMobileNumber(request.getParameter("mobilenumber"));
				user.setEmailid(request.getParameter("emailid"));
				user.setGender(request.getParameter("gender"));
				user.setDob(request.getParameter("dob"));
				user.setPasssword(password);
				user.setUserid(userid);
				ud.insertUser(user);
			} catch (Exception e) {
				System.out.println(e);
			}
			request.setAttribute("message", "Registered successfully, kindly login to continue");
			request.getRequestDispatcher("login.jsp").forward(request, response);

		} else {
			request.setAttribute("message", "Data not found, kindly register first");
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

	}

}
