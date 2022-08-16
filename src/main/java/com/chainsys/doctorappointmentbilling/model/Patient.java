package com.chainsys.doctorappointmentbilling.model;

/**
 * @author babu3107
 */
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Past;

@Entity
@Table(name = "PATIENT")
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "PATIENT_ID_REF")
	@SequenceGenerator(name = "PATIENT_ID_REF", sequenceName = "PATIENT_ID_REF", allocationSize = 1)
	@Column(name = "PATIENT_ID")
	private int patientId;
//	@Size(max = 40, min = 3, message = "Name length should be 3 to 40")
//	@NotNull(message = "Name can't be Empty")
	@Column(name = "NAME")
//	@NotEmpty(message = "*Please Enter Your Name")
//  @Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String name;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "GENDER")
	private String gender;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "DOB")
	@Past
	private Date dob;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "BLOOD_GROUP")
	private String bloodGroup;
//	@NotEmpty( message ="*Mandatory field")
	@Email(message = "Please Enter a Valid Email Id !!")
	@Column(name = "EMAIL_ID")
//	@Email(message = "*Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String emailId;
	// @Size(min =8,message =" Password Contains Minimum 8 Characters")
	// @Pattern(regexp="^[a-zA-Z)-9]{5}",message =" The Password can contain only
	// characters and digits")
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "PASSWORD")
//	@Pattern(regexp="^.(?=.{8,})(?=..[0-9])(?=.[a-z])(?=.[A-Z])(?=.[@#$%^&+=]).$",message="please enter the correct format *Welcome@12")
	private String password;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "MOBILE_NUMBER")
//	@Digits(message = "*Invalid number.", integer = 10, fraction = 0)
	private long mobileNumber;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "LOCATION")
	private String location;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "SYMPTOMS")
	private String symptoms;

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

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

}
