package com.chainsys.doctorappointmentbilling.model;

/**
 * @author babu3107
 */
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PATIENT")
public class Patient {
	@Id
	@Column(name = "PATIENT_ID")
	private int patientId;
	@Column(name = "NAME")
	private String name;
	@Column(name = "GENDER")
	private String gender;
	@Column(name = "DOB")
	private Date dob;
	@Column(name = "BLOOD_GROUP")
	private String bloodGroup;
	@Column(name = "EMAIL_ID")
	private String emailId;
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "MOBILE_NUMBER")
	private long mobileNumber;
	@Column(name = "LOCATION")
	private String location;
	@Column(name = "DISEASE")
	private String disease;

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
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

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

}
