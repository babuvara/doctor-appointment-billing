package com.chainsys.doctorappointmentbilling.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DOCTORDETAILS")
public class DoctorDetails {
	@Id
	@Column(name = "DOCTOR_ID")
	private int doctorId;
	@Column(name = "speciality")
	private String speciality;
	@Column(name = "AVAILABLE_TIME")
	private String availableTime;
	@Column(name = "EXPERIENCE")
	private int experience;

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
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

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

}