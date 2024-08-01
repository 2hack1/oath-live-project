package com.my.realpro.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class OrgNagrik {
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
	private String org_name;
	private String doc_type;
	private String doc_id;

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

	public String getOrg_name() {
		return org_name;
	}

	public void setOrg_name(String org_name) {
		this.org_name = org_name;
	}

	public String getDoc_type() {
		return doc_type;
	}

	public void setDoc_type(String doc_type) {
		this.doc_type = doc_type;
	}

	public String getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}

	public OrgNagrik() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrgNagrik(int id, String name, String email, String password, String zip_code, String state, String city,
			String pin_code, String gender, String org_name, String doc_type, String doc_id) {
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
		this.org_name = org_name;
		this.doc_type = doc_type;
		this.doc_id = doc_id;
	}

//	@Override
//	public String toString() {
//		return "OrgNagrik [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", zip_code="
//				+ zip_code + ", state=" + state + ", city=" + city + ", pin_code=" + pin_code + ", gender=" + gender
//				+ ", org_name=" + org_name + ", doc_type=" + doc_type + ", doc_id=" + doc_id + "]";
//	}

}
