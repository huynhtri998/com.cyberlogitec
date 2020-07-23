package com.cyberlogitec.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.Cart;
import com.cyberlogitec.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public void addCartItem(CartItem cartItem) {
		sqlsession.insert("CartItemMapper.addCartItem",cartItem);
		
	}

}
