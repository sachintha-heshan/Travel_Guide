package com.admin;

public class admin {
	int adminID;
	String firstName;
	String lastName;
	String username;
	String email;
	String password;
	String phoneNumber;
	String gerder;
	
	public admin(int adminID, String firstName, String lastName, String username, String email, String password,
			String phoneNumber, String gerder) {
		this.adminID = adminID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.gerder = gerder;
	}

	public int getAdminID() {
		return adminID;
	}

	public String getFirstName() {
		return firstName;
	}
	
	public String getLastName() {
		return lastName;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public String getGerder() {
		return gerder;
	}
	
}
