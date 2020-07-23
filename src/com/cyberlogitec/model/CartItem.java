package com.cyberlogitec.model;

public class CartItem {
	private Integer idCartItem;
	private Integer idCart;
	private Integer productId;
	private Integer productQuantity;
	private Integer productPrice;
	
	public CartItem() {
		// TODO Auto-generated constructor stub
	}
	
	public CartItem(Integer idCartItem, Integer idCart, Integer productId, Integer productQuantity,
			Integer productPrice) {
		super();
		this.idCartItem = idCartItem;
		this.idCart = idCart;
		this.productId = productId;
		this.productQuantity = productQuantity;
		this.productPrice = productPrice;
	}

	public Integer getIdCartItem() {
		return idCartItem;
	}

	public void setIdCartItem(Integer idCartItem) {
		this.idCartItem = idCartItem;
	}

	public Integer getIdCart() {
		return idCart;
	}

	public void setIdCart(Integer idCart) {
		this.idCart = idCart;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(Integer productQuantity) {
		this.productQuantity = productQuantity;
	}

	public Integer getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	
	
	
}
