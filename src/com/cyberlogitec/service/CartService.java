package com.cyberlogitec.service;

import com.cyberlogitec.model.Cart;

public interface CartService {
	void addCart(Cart cart);
	Integer getLastKey();
}
