package com.chainsys.doctorappointmentbilling.model;

/**
 * @author babu3107
 */
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Future;

@Entity
@Table(name = "APPOINTMENT")
public class Appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "APPOINTMENT_ID_REF")
	@SequenceGenerator(name = "APPOINTMENT_ID_REF", sequenceName = "APPOINTMENT_ID_REF", allocationSize = 1)
	@Column(name = "APPOINTMENT_ID")
	private int appointmentId;
	@Column(name = "APPOINTMENT_DATE")
	@Future(message = "Past Date is Not Support")
	private Date appointmentDate;
	@Column(name = "PATIENT_NAME")
	private String patientName;
	@Column(name = "PATIENT_EMAIL")
	private String patientEmail;
	@Column(name = "DOCTOR_ID")
	private int doctorId;
	@Column(name = "APPOINTMENT_STATUS")
	private String appointmentStatus;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DOCTOR_ID", nullable = false, insertable = false, updatable = false)
	private DoctorDetails doctorDetails;

	public DoctorDetails getDoctorDetails() {
		return doctorDetails;
	}

	public void setDoctorDetails(DoctorDetails doctorDetails) {
		this.doctorDetails = doctorDetails;
	}

	public int getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}

	public Date getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getPatientEmail() {
		return patientEmail;
	}

	public void setPatientEmail(String patientEmail) {
		this.patientEmail = patientEmail;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public String getAppointmentStatus() {
		return appointmentStatus;
	}

	public void setAppointmentStatus(String appointmentStatus) {
		this.appointmentStatus = appointmentStatus;
	}

}
	

	
