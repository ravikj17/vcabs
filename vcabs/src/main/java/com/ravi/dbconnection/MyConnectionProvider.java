package com.ravi.dbconnection;

import java.sql.*;

public class MyConnectionProvider implements MyProvider {

	static Connection con = null;

	public static Connection getCon() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(connURL, username, password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

}
