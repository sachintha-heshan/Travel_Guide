package com.blog;

public class blog {
	int blogID;
	String title;
	String shortDescription;
	String category;
	String description;
	String imageFileName;
	String uploadPath;
	
	public blog(int blogID, String title, String shortDescription, String category, String description, String imageFileName, String uploadPath){
		this.blogID = blogID;
		this.title = title;
		this.shortDescription = shortDescription;
		this.category = category;
		this.description = description;
		this.imageFileName = imageFileName;
		this.uploadPath = uploadPath;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public int getBlogID() {
		return blogID;
	}

	public String getTitle() {
		return title;
	}

	public String getCategory() {
		return category;
	}

	public String getDescription() {
		return description;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	
}
