package com.user;

public class user {
	int userID;
	String firstName;
	String lastName;
	String username;
	String email;
	String password;
	String phoneNumber;
	String gerder;
	
	public user(int userID, String firstName, String lastName, String username, String email, String password, String phoneNumber,
			String gerder) {
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.gerder = gerder;
	}

	public user(String firstName, String lastName, String username, String email, String password, String phoneNumber,
			String gerder) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.gerder = gerder;
	}
	
	public int getUserID() {
		return userID;
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
