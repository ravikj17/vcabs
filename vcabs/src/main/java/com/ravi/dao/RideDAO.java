package com.ravi.dao;

import com.ravi.beans.RideBean;

public interface RideDAO {

	public int insertRide(RideBean ride);

	public RideBean getRideBean(String userid);

	public int updateRide(RideBean ride);

	public int cancelRide(String userid);

	public int updateLocation(String driverid, String location);

}
