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
@Table(name = "APPOINTMENT")
public class Appointment {
	@Id
	@Column(name = "APPOINTMENT_ID")
	private int appointmentId;
	@Column(name = "APPOINTMENT_DATE")
	private Date appointmentDate;
	@Column(name = "APPOINTMENT_TIME")
	private String appointmentTime;
	@Column(name = "PATIENT_ID")
	private int patientId;
	@Column(name = "PURPOSE")
	private String purpose;
	@Column(name = "DOCTOR_ID")
	private int doctorId;
	@Column(name = "APPOINTMENT_STATUS")
	private String appointmentStatus;

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

	public String getAppointmentTime() {
		return appointmentTime;
	}

	public void setAppointmentTime(String appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
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
