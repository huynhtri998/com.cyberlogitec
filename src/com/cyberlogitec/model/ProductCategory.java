package com.cyberlogitec.model;

import java.util.List;

public class ProductCategory {
	private Integer categoryId;
	private String categoryName;
	private String categoryCode;
	private List<Product> product;
	
	public ProductCategory() {
		// TODO Auto-generated constructor stub
	}

	public ProductCategory(Integer categoryId, String categoryName, String categoryCode, List<Product> product) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.categoryCode = categoryCode;
		this.product = product;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategorycode() {
		return categoryCode;
	}

	public void setCategorycode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}
	
	
}
