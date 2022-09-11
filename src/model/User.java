package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	private int id;
	@Column
	private String fullname,username,email,mobile,pass,dob,gender;

	public User() {
}

	public User(int id) {
		super();
		this.id = id;
	}

	public User(int id, String fullname, String username, String email, String mobile, String pass, String dob,
			String gender) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.username = username;
		this.email = email;
		this.mobile = mobile;
		this.pass = pass;
		this.dob = dob;
		this.gender = gender;
	}

	public User(String fullname, String username, String email, String mobile, String pass, String dob, String gender) {
		super();
		this.fullname = fullname;
		this.username = username;
		this.email = email;
		this.mobile = mobile;
		this.pass = pass;
		this.dob = dob;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	
}
