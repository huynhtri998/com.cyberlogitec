package com.cyberlogitec.model;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

public class Cart {
	private Integer idCart;
	private Integer idProduct;
	private String quantity;
	private String total;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Cart(Integer idCart, String quantity, String total, Integer idProduct) {
		super();
		this.idCart = idCart;
		this.quantity = quantity;
		this.total = total;
		this.idProduct = idProduct;
	}

	public Integer getIdCart() {
		return idCart;
	}

	public void setIdCart(Integer idCart) {
		this.idCart = idCart;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public Integer getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(Integer idProduct) {
		this.idProduct = idProduct;
	}
	
	
	
}
