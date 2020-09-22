package com.ravi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ravi.beans.RideBean;
import com.ravi.dbconnection.MyConnectionProvider;

public class RideDAOImpl implements RideDAO {

	static Connection con;
	static PreparedStatement ps;

	public int insertRide(RideBean ride) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into ride values(?,?,?,?,?,?,?,?)");
			ps.setString(1, ride.getUserid());
			ps.setString(2, ride.getSource());
			ps.setString(3, ride.getDestination());
			ps.setString(4, ride.getPlan());
			ps.setDouble(5, ride.getFare());
			ps.setString(6, ride.getStatus());
			ps.setString(7, ride.getDriverId());
			ps.setString(8, ride.getLocation());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public RideBean getRideBean(String userid) {
		RideBean ride = new RideBean();
		try {

			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from ride where userid=?");
			ps.setString(1, userid);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ride.setUserid(rs.getString(1));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return ride;
	}

	public int updateRide(RideBean ride) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("update ride set driverid=? where userid=?");
			ps.setString(1, ride.getDriverId());
			ps.setString(2, ride.getUserid());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public int cancelRide(String userid) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("delete from ride where userid=?");
			ps.setString(1, userid);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public int updateLocation(String driverid, String location) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("update ride set location=? where driverid=?");
			ps.setString(1, location);
			ps.setString(2, driverid);
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

}
