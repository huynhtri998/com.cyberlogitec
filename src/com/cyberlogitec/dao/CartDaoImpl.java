package com.cyberlogitec.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.Cart;

@Repository
public class CartDaoImpl implements CartDao{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int addCart(Cart cart) {
		return sqlsession.insert("CartMapper.addCart", cart);
		
	}

}
