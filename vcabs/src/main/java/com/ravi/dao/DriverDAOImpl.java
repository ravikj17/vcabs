package com.ravi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ravi.beans.DriverBean;
import com.ravi.dbconnection.MyConnectionProvider;

public class DriverDAOImpl implements DriverDAO {

	static Connection con;
	static PreparedStatement ps;

	public int insertDriver(DriverBean driver) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into driver values(?,?,?,?,?,?,?,md5(?))");
			ps.setString(1, driver.getFirstName());
			ps.setString(2, driver.getLastName());
			ps.setString(3, driver.getDriverId());
			ps.setDate(4, driver.getDob());
			ps.setString(5, driver.getMobileNumber());
			ps.setString(6, driver.getVehicleNumber());
			ps.setString(7, driver.getPlan());
			ps.setString(8, driver.getPassword());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public DriverBean getDriver(String driverid, String password) {
		DriverBean driver = new DriverBean();
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from driver where driverid=? and password=md5(?)");
			ps.setString(1, driverid);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				driver.setDriverId(rs.getString(3));
				driver.setPassword(rs.getString(8));
				driver.setFirstName(rs.getString(1));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return driver;
	}

}
