package com.ravi.beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DriverBean {

	private String driverId;
	private String firstName;
	private String lastName;
	private String password;
	private Date dob;
	private String mobileNumber;
	private String vehicleNumber;
	private String plan;
	java.sql.Date sqlDate;
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

	public String getDriverId() {
		return driverId;
	}

	public void setDriverId(String driverId) {
		this.driverId = driverId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public java.sql.Date getDob() {
		return sqlDate;
	}

	public void setDob(String dob2) throws ParseException {
		this.dob = formatter.parse(dob2);
		sqlDate = new java.sql.Date(dob.getTime());
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

}
