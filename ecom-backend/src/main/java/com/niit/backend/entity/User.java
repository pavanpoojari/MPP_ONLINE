package com.niit.backend.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="user")
@Component
public class User implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "USER_ID")
	private int id;
	
	private String username;
	private String firstlastname;
	private String emailid;
	private String gender;
	private String phonenumber;
	private String password;
	private boolean enable;
	private String role;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstlastname() {
		return firstlastname;
	}
	public void setFirstlastname(String firstlastname) {
		this.firstlastname = firstlastname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firstlastname=" + firstlastname + ", emailid=" + emailid
				+ ", gender=" + gender + ", phonenumber=" + phonenumber + ", password=" + password + ", enable="
				+ enable + ", role=" + role + "]";
	}

}
