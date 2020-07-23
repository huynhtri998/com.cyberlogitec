package com.cyberlogitec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.CartItemDao;
import com.cyberlogitec.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;

	@Override
	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
		
	}
	
	
}
