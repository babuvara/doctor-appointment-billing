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
//	@Size(max = 40, min = 3, message = "Name length should be 3 to 40")
//	@NotNull(message = "Employee Name can't be Empty")
	@Column(name = "DOCTOR_NAME")
//	@NotEmpty(message = "*Please enter employeeName")
//  @Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String doctorName;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "EMAIL_ID")
//	@Email(message = "*Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String doctorEmail;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "PASSWORD")
//	@Pattern(regexp="^.(?=.{8,})(?=..[0-9])(?=.[a-z])(?=.[A-Z])(?=.[@#$%^&+=]).$",message="please enter the correct format *Welcome@12")
	private String password;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "SPECIALITY")
	private String speciality;
//	@NotEmpty( message ="*Mandatory field")
	@Column(name = "AVAILABLE_TIME")
	private String availableTime;
//	@NotEmpty( message ="*Mandatory field")
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