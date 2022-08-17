package com.techelevator.model.dto;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {

	private int id;

	private String userName;
	
	@Size(min=8, message="Password too short, must be at least 8")
	@Pattern.List({
		@Pattern(regexp=".*[a-z].*", message="Must have a lower case"),
		@Pattern(regexp=".*[A-Z].*", message="Must have a capital")
	})
	private String password;
	private String role;
	
	private String confirmPassword;

	private String zipcode;
	private String rating;
	private String price;
	private boolean foodDeliveryServices = false;

	private boolean italian = false;
	private boolean asianfusion = false;
	private boolean bbq = false;
	private boolean pizza = false;
	






	public String getUserName() {
		return userName;

	}
	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
