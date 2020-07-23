package com.cyberlogitec.model;

public class Cart {
	private Integer idCart;
	private Integer idUser;
	private Float total;
	
	public Cart() {
		
	}

	public Cart(Integer idCart, Float total, Integer idUser) {
		super();
		this.idCart = idCart;		
		this.total = total;
		this.idUser = idUser;
	}
	
	public Cart(Float total, Integer idUser) {
		super();		
		this.total = total;
		this.idUser = idUser;
	}

	public Integer getIdCart() {
		return idCart;
	}

	public void setIdCart(Integer idCart) {
		this.idCart = idCart;
	}

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
	
	
	
}
