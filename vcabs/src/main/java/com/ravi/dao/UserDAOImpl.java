package com.ravi.dao;

import com.ravi.beans.UserBean;
import com.ravi.dbconnection.MyConnectionProvider;

import java.sql.*;

public class UserDAOImpl implements UserDAO {

	static Connection con;
	static PreparedStatement ps;

	public int insertUser(UserBean user) {

		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,md5(?))");
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getFirstName());
			ps.setString(3, user.getLastName());
			ps.setDate(4, user.getDob());
			ps.setString(5, user.getGender());
			ps.setString(6, user.getEmailid());
			ps.setString(7, user.getMobileNumber());
			ps.setString(8, user.getPasssword());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public UserBean getUserBean(String userid, String password) {

		UserBean user = new UserBean();

		try {

			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from user where userid=? and password=md5(?)");
			ps.setString(1, userid);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				user.setUserid(rs.getString(1));
				user.setPasssword(rs.getString(8));
				user.setFirstName(rs.getString(2));
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return user;
	}

	public UserBean checkAvailability(String userid) {

		UserBean user = new UserBean();
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from user where userid=?");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				user.setUserid(rs.getString(1));
				user.setFirstName(rs.getString(2));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;
	}

	public boolean checkAdmin(String userid, String password) {

		UserBean user = new UserBean();
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from admin where adminid=? and password=md5(?)");
			ps.setString(1, userid);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				user.setUserid(rs.getString(1));
				user.setPasssword(rs.getString(2));
				user.setFirstName(rs.getString(3));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		if (user.getFirstName() != null) {
			return true;
		}
		return false;

	}

}
