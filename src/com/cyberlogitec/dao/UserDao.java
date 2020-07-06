package com.cyberlogitec.dao;

import com.cyberlogitec.model.User;

public interface UserDao {
	User getUserByUserName(String username);
	int updateUser(User user);
	int addUser(User user);
}
