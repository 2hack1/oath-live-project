package com.my.realpro.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="nagrik")
public class Nagrik {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String password;
	private String zip_code;
	private String state;
	private String city;
	private String pin_code;
	private String gender;

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPin_code() {
		return pin_code;
	}

	public void setPin_code(String pin_code) {
		this.pin_code = pin_code;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Nagrik() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Nagrik(int id, String name, String email, String password, String zip_code, String state, String city,
			String pin_code, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.zip_code = zip_code;
		this.state = state;
		this.city = city;
		this.pin_code = pin_code;
		this.gender = gender;
	}

//	@Override
//	public String toString() {
//		return "Enty [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", zip_code=" + zip_code
//				+ ", state=" + state + ", city=" + city + ", pin_code=" + pin_code + ", gender=" + gender + "]";
//	}
}
