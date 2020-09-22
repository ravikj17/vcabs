package com.ravi.beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserBean {

	private String userid;
	private String firstName;
	private String lastName;
	private Date dob;
	private String gender;
	private String emailid;
	private String mobileNumber;
	private String passsword;
	java.sql.Date sqlDate;
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getPasssword() {
		return passsword;
	}

	public void setPasssword(String passsword) {
		this.passsword = passsword;
	}

}
