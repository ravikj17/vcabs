package com.ravi.dao;

import com.ravi.beans.UserBean;

public interface UserDAO {

	public int insertUser(UserBean user);

	public UserBean getUserBean(String userid, String password);

	public UserBean checkAvailability(String userid);

	public boolean checkAdmin(String userid, String password);

}
