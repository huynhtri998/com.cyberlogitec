package com.cyberlogitec.model;

import java.util.List;

public class ShoppingCart {
	/* private List<CartItem> cartItems; */
	private String product;
	private Float total;
	private Integer idUser;
	
	public ShoppingCart() {
		// TODO Auto-generated constructor stub
	}

	public ShoppingCart(String product, Float total, Integer idUser) {
		super();
		//this.cartItems = cartItems;
		this.product = product;
		this.total = total;
		this.idUser = idUser;
	}

	/*
	 * public List<CartItem> getCartItems() { return cartItems; }
	 * 
	 * public void setCartItems(List<CartItem> cartItems) { this.cartItems =
	 * cartItems; }
	 */

	public Float getTotal() {
		return total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

	public Integer getIdUser() {
		return idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	
}
