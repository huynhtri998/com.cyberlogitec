package com.cyberlogitec.dao;

import com.cyberlogitec.model.Cart;

public interface CartDao {
	void addCart(Cart cart);
	Integer getLastKey();
}
