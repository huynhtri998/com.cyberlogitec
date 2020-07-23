package com.cyberlogitec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.CartDao;
import com.cyberlogitec.model.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;
	
	@Override
	public void addCart(Cart cart) {
		 cartDao.addCart(cart);
	}

	@Override
	public Integer getLastKey() {
		return cartDao.getLastKey();
	}

}
