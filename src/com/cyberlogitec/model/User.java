package com.cyberlogitec.model;

public class User {
	private Integer id;
	private String name;
	private String userName;
	private String password;
	private String phone;
	private String email;
	private String imageURL;
	private String role;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(Integer id, String name, String userName, String password, String phone, String email, String imageURL,
			String role) {
		super();
		this.id = id;
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.imageURL = imageURL;
		this.role = role;
	}
	
	public User(String name, String userName, String password, String phone, String email, String imageURL,
			String role) {
		super();
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.imageURL = imageURL;
		this.role = role;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
}
