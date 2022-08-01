package com.chainsys.doctorappointmentbilling.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BILLING")
public class Billing {
	@Id
	@Column(name = "HOSPITAL_NAME")
	private String hospitalname;
	@Column(name = "DOCTOR_ID")
	private int doctorid;
	@Column(name = "PATIENT_ID")
	private int patientid;
	@Column(name = "PURPOSE")
	private String purpose;
	@Column(name = "APPOINTMENT_ID")
	private int appointmentid;
	@Column(name = "NET_BILL")
	private float netbill;

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public int getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
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

	public int getAppointmentid() {
		return appointmentid;
	}

	public void setAppointmentid(int appointmentid) {
		this.appointmentid = appointmentid;
	}

	public float getNetbill() {
		return netbill;
	}

	public void setNetbill(float netbill) {
		this.netbill = netbill;
	}

}
