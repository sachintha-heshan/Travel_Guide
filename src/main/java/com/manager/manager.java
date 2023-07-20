package com.manager;

public class manager {
	int managerID;
	String firstName;
	String lastName;
	String username;
	String email;
	String password;
	String phoneNumber;
	String gerder;
	
	public manager(int managerID, String firstName, String lastName, String username, String email, String password,
			String phoneNumber, String gerder) {
		this.managerID = managerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.gerder = gerder;
	}

	public int getManagerID() {
		return managerID;
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
