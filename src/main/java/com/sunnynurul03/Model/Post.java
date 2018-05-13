package com.sunnynurul03.Model;

public class Post {
    
	private Integer ID;
	private String post_title;
	private String post_body;
	private Integer post_by;
	private Integer post_to;
	
	
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_body() {
		return post_body;
	}
	public void setPost_body(String post_body) {
		this.post_body = post_body;
	}
	public Integer getPost_by() {
		return post_by;
	}
	public void setPost_by(Integer post_by) {
		this.post_by = post_by;
	}
	public Integer getPost_to() {
		return post_to;
	}
	public void setPost_to(Integer post_to) {
		this.post_to = post_to;
	}
	
	@Override
	public String toString() {
		return "Post [ID=" + ID + ", post_title=" + post_title + ", post_body=" + post_body + ", post_by=" + post_by
				+ ", post_to=" + post_to + "]";
	}
	
	
	
}
