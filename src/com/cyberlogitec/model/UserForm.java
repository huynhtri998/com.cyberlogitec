package com.cyberlogitec.model;

public class UserForm {
	private String name;
	private String userName;
	private String password;
	private String confirmPassword;
	private String phone;
	private String email;
	private String imageURL;
	
	public UserForm() {
		// TODO Auto-generated constructor stub
	}
	
	public UserForm(String name, String userName, String password, String confirmPassword, String phone, String email,
			String imageURL) {
		super();
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.phone = phone;
		this.email = email;
		this.imageURL = imageURL;
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

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
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
	
	
}
