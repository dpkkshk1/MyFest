package com.fest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;

import org.springframework.stereotype.Component;

@Component
@Entity(name="user")

@NamedNativeQueries(  
	    {  
	        @NamedNativeQuery(  
	        		name="User.loginCheck",
	        		query ="select * from user where email=? and password=?"
	        ),
	        @NamedNativeQuery(
	        		
	        		name="User.userByEmail",
	        		query="select * from user where email =?"
	        		)
	    }  
	)

public class User {

	public User() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	private int userId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="mobile")
	private String mobile;
	
	@Column(name="stream")
	private String stream;
	
	@Column(name="course")
	private String course;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	public User(int userId) {
		super();
		this.userId = userId;
	}
	public User(int userId, String name, String mobile, String stream, String course, String email, String password) {
		super();
		this.userId = userId;
		this.name = name;
		this.mobile = mobile;
		this.stream = stream;
		this.course = course;
		this.email = email;
		this.password = password;
	}
	public User(String name, String mobile, String stream, String course, String email, String password) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.stream = stream;
		this.course = course;
		this.email = email;
		this.password = password;
	}
	public User(String name, String mobile, String stream, String course, String email) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.stream = stream;
		this.course = course;
		this.email = email;
	}
	
	public User(int userId, String name, String mobile, String stream, String course, String email) {
		super();
		this.userId = userId;
		this.name = name;
		this.mobile = mobile;
		this.stream = stream;
		this.course = course;
		this.email = email;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", name=" + name + ", mobile=" + mobile + ", stream=" + stream + ", course="
				+ course + ", email=" + email + ", password=" + password + "]";
	}
	

}
