package com.chainsys.doctorappointmentbilling.model;

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
	private int appointmentid;
	@Column(name = "APPOINTMENT_DATE")
	private Date appointmentdate;
	@Column(name = "APPOINTMENT_TIME")
	private String appointmenttime;
	@Column(name = "PATIENT_ID")
	private int patientid;
	@Column(name = "PURPOSE")
	private String purpose;
	@Column(name = "DOCTOR_ID")
	private int doctorid;
	@Column(name = "APPOINTMENT_STATUS")
	private String appointmentstatus;

	public int getAppointmentid() {
		return appointmentid;
	}

	public void setAppointmentid(int appointmentid) {
		this.appointmentid = appointmentid;
	}

	public Date getAppointmentdate() {
		return appointmentdate;
	}

	public void setAppointmentdate(Date appointmentdate) {
		this.appointmentdate = appointmentdate;
	}

	public String getAppointmenttime() {
		return appointmenttime;
	}

	public void setAppointmenttime(String appointmenttime) {
		this.appointmenttime = appointmenttime;
	}

	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public int getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}

	public String getAppointmentstatus() {
		return appointmentstatus;
	}

	public void setAppointmentstatus(String appointmentstatus) {
		this.appointmentstatus = appointmentstatus;
	}

}
