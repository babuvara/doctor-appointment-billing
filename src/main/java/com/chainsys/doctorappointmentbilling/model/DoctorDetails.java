package com.chainsys.doctorappointmentbilling.model;

import java.util.List;

/**
 * @author babu3107
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "DOCTORDETAILS")
public class DoctorDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "DOCTOR_ID_REF")
	@SequenceGenerator(name = "DOCTOR_ID_REF", sequenceName = "DOCTOR_ID_REF", allocationSize = 1)
	@Column(name = "DOCTOR_ID")
	private int doctorId;
	@Column(name = "DOCTOR_NAME")
	private String doctorName;
	@Column(name = "EMAIL_ID")
	private String doctorEmail;
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "SPECIALITY")
	private String speciality;
	@Column(name = "AVAILABLE_TIME")
	private String availableTime;
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

	public String getDoctorEmail() {
		return doctorEmail;
	}

	public void setDoctorEmail(String doctorEmail) {
		this.doctorEmail = doctorEmail;
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