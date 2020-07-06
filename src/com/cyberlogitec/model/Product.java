package com.cyberlogitec.model;

public class Product {
	private Integer id;
	private String name;
	private Float price;
	private Float salePrice;
	private String imageURL;
	private String content;
	private Integer categoryid;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(Integer id, String name, Float price, Float salePrice, String imageURL, String content,
			Integer categoryid) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.salePrice = salePrice;
		this.imageURL = imageURL;
		this.content = content;
		this.categoryid = categoryid;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Float getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Float salePrice) {
		this.salePrice = salePrice;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}
	
	
}
