package com.cyberlogitec.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public User getUserByUserName(String username) {
		return sqlsession.selectOne("UserMapper.getUserByUserName", username);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addUser(User user) {
		return sqlsession.insert("UserMapper.addUser", user);
	}

}
