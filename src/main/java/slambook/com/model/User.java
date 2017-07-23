package slambook.com.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User{

	@GeneratedValue
	@Id
	private long userId;
	
	private String firstName;
	
	private String lastName;
	
	private String email;
	
	private Date dob;
	private String mobile;
	
	private String password;
	
	private String gender;
	

	
	public User(User u) {
		firstName= u.getFirstName();
		lastName = u.getLastName();
		email= u.getEmail();
		password = u.getPassword();
		mobile= u.getMobile();
		dob=u.getDob();
		gender= u.getGender();
		
	}
	public User() {
		super();
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	


	

	

	
	
}
