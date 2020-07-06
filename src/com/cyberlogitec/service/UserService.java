package com.cyberlogitec.service;

import com.cyberlogitec.model.User;

public interface UserService {
	User getUserByUserName(String username);
	int updateUser(User user);
	int addUser(User user);
}
