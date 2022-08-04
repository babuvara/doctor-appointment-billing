package com.chainsys.doctorappointmentbilling.model;

/**
 * @author babu3107
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BILLING")
public class Billing {
	@Id
	@Column(name = "HOSPITAL_NAME")
	private String hospitalName;
	@Column(name = "DOCTOR_ID")
	private int doctorId;
	@Column(name = "PATIENT_ID")
	private int patientId;
	@Column(name = "PURPOSE")
	private String purpose;
	@Column(name = "APPOINTMENT_ID")
	private int appointmentId;
	@Column(name = "NET_BILL")
	private float netBill;

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
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

	public int getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}

	public float getNetBill() {
		return netBill;
	}

	public void setNetBill(float netBill) {
		this.netBill = netBill;
	}

}
