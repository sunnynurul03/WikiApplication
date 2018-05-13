package com.sunnynurul03.Model;

public class User {
	
	private Integer ID;
	private Long id;
	private String name;
	private String email;
	private Integer age;
	private String phoneNumber;
	private String sex;
	private String country;
	private String username;
	private String password;
	private String passwordValid;
	private Integer enabled;
	private long user_id;
	private long authority_id;

	
	
	
	
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	} 
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPasswordValid() {
		return passwordValid;
	}
	public void setPasswordValid(String passwordValid) {
		this.passwordValid = passwordValid;
	} 
	
	public Integer getEnabled() {
		return enabled;
	}
	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public long getAuthority_id() {
		return authority_id;
	}
	public void setAuthority_id(long authority_id) {
		this.authority_id = authority_id;
	}
	@Override
	public String toString() {
		return "User [ID=" + ID + ", id=" + id + ", name=" + name + ", email=" + email + ", age=" + age
				+ ", phoneNumber=" + phoneNumber + ", sex=" + sex + ", country=" + country + ", username=" + username
				+ ", password=" + password + ", passwordValid=" + passwordValid + ", enabled=" + enabled + ", user_id="
				+ user_id + ", authority_id=" + authority_id + "]";
	}
	
	
		
}
