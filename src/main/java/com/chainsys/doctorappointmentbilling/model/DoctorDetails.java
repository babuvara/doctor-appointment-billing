package com.chainsys.doctorappointmentbilling.model;

import java.util.List;

/**
 * @author babu3107
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "DOCTORDETAILS")
public class DoctorDetails {
	@Id
	@Column(name = "DOCTOR_ID")
	private int doctorId;
	@Size(min =3,message =" Name Size is not less than 3")
	@NotBlank( message ="Name can not be Empty")
	@Column(name = "DOCTOR_NAME")
	private String doctorName;
	@Size(min =8,message =" Password Contains Minimum 8 Characters")
	// @Pattern(regexp="^[a-zA-Z)-9]{5}",message =" The Password can contain only characters and digits")
	@NotBlank( message ="Password is must field")
	@Column(name = "PASSWORD")
	private String password;
	@NotBlank( message ="Speciality can not be Empty")
	@Column(name = "SPECIALITY")
	private String speciality;
	@NotBlank( message ="Available Time can not be Empty")
	@Column(name = "AVAILABLE_TIME")
	private String availableTime;
	@NotBlank( message ="Experience can not be Empty")
	@Column(name = "EXPERIENCE")
	private String experience;
	
	

	@OneToMany(mappedBy = "doctorDetails", fetch = FetchType.LAZY)
	private List<Appointment> appointmentList;

	public List<Appointment> getAppointment() {
		return appointmentList;
	}

	public void setAppointment(List<Appointment> appointmentList) {
		this.appointmentList = appointmentList;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getAvailableTime() {
		return availableTime;
	}

	public void setAvailableTime(String availableTime) {
		this.availableTime = availableTime;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

}