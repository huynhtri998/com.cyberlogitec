package com.cyberlogitec.model;

public class Product {
	private Integer productId;
	private String productName;
	private Float productPrice;
	private Float productSalePrice;
	private String productImageURL;
	private String productContent;
	private Integer categoryId;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(Integer productId, String productName, Float productPrice, Float productSalePrice,
			String productImageURL, String productContent, Integer categoryId) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productSalePrice = productSalePrice;
		this.productImageURL = productImageURL;
		this.productContent = productContent;
		this.categoryId = categoryId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Float productPrice) {
		this.productPrice = productPrice;
	}

	public Float getProductSalePrice() {
		return productSalePrice;
	}

	public void setProductSalePrice(Float productSalePrice) {
		this.productSalePrice = productSalePrice;
	}

	public String getProductImageURL() {
		return productImageURL;
	}

	public void setProductImageURL(String productImageURL) {
		this.productImageURL = productImageURL;
	}

	public String getProductContent() {
		return productContent;
	}

	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	
	
}
