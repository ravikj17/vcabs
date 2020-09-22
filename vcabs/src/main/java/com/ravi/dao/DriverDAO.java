package com.ravi.dao;

import com.ravi.beans.DriverBean;

public interface DriverDAO {

	public int insertDriver(DriverBean driver);

	public DriverBean getDriver(String driverid, String password);

}
