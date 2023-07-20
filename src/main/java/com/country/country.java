package com.country;

public class country {
	int countryID;
	String countryName;
	String shortDescription;
	String description;
	String embedLink;
	String imageFileName;
	String uploadPath;
	
	public country(int countryID, String countryName, String shortDescription, String description, String embedLink, String imageFileName, String uploadPath) {
		this.countryID = countryID;
		this.countryName = countryName;
		this.shortDescription = shortDescription;
		this.description = description;
		this.embedLink = embedLink;
		this.imageFileName = imageFileName;
		this.uploadPath = uploadPath;
	}

	public int getCountryID() {
		return countryID;
	}

	public String getCountryName() {
		return countryName;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public String getDescription() {
		return description;
	}

	public String getEmbedLink() {
		return embedLink;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public String getUploadPath() {
		return uploadPath;
	}
	
}
