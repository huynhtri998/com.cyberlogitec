package com.cyberlogitec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.UserDao;
import com.cyberlogitec.model.User;



@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDAO;
	
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public User getUserByUserName(String username) {
		return userDAO.getUserByUserName(username);
	}

	@Override
	public int updateUser(User user) {
		return userDAO.updateUser(user);
	}

	@Override
	public int addUser(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRole("USER");
		return userDAO.addUser(user);
	}
	
	
}
