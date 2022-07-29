package com.chainsys.projectwork.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "PERSON")
public class Person {
	@Id
	private int person_id;
	private String name;
	private String gender;
	private Date dob;
	private String blood_group;
	private String email_id;
	private long mobile_number;
	private String location;
	private String person_type;

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getBlood_group() {
		return blood_group;
	}

	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public long getMobile_number() {
		return mobile_number;
	}

	public void setMobile_number(long mobile_number) {
		this.mobile_number = mobile_number;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPerson_type() {
		return person_type;
	}

	public void setPerson_type(String person_type) {
		this.person_type = person_type;
	}
	@Override
	public String toString() {
		return String.format("%d, %s, %s, %s, %s, %s, %s, %s ,%s",person_id, name, gender, dob, blood_group, email_id, mobile_number, location, person_type);
	}

}
