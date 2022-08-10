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
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "PATIENT")
public class Patient {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="PATIENT_ID_REF")
	@SequenceGenerator(name="PATIENT_ID_REF",sequenceName ="PATIENT_ID_REF",allocationSize = 1)
	@Column(name = "PATIENT_ID")
	private int patientId;
	@Size(min =3,message =" Name Size is not less than 3")
	@NotBlank( message ="Name can not be Empty")
	@Column(name = "NAME")
	private String name;
	@NotBlank( message ="Mandatory field")
	@Column(name = "GENDER")
	private String gender;  
	@Column(name = "DOB")
	private Date dob;
	@NotBlank( message ="This field can not be Empty")
	@Column(name = "BLOOD_GROUP")
	private String bloodGroup;
	@Email(message="Please Enter a Valid Email Id !!")
	@Column(name = "EMAIL_ID")
	private String emailId;
	@Size(min =8,message =" Password Contains Minimum 8 Characters")
	// @Pattern(regexp="^[a-zA-Z)-9]{5}",message =" The Password can contain only characters and digits")
	@NotBlank( message ="Password is must field")
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "MOBILE_NUMBER")
	private long mobileNumber;
	@NotBlank( message ="Location can not be Empty")
	@Column(name = "LOCATION")
	private String location;
	@NotBlank( message ="Disease can not be Empty")
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
