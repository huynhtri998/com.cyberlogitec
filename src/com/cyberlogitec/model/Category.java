package com.cyberlogitec.model;

public class Category {
	private Integer categoryId;
	private String categoryName;
	private String categoryCode;
	public Category() {
		// TODO Auto-generated constructor stub
	}
	public Category(Integer categoryId, String categoryName, String categoryCode) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.categoryCode = categoryCode;
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
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	

}
