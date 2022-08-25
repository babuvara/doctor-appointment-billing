package com.chainsys.doctorappointmentbilling.model;

/**
 * @author babu3107
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "BILLING")
public class Billing {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "BILL_ID_REF")
	@SequenceGenerator(name = "BILL_ID_REF", sequenceName = "BILL_ID_REF", allocationSize = 1)
	@Column(name = "BILL_ID")
	private int billId;
	@Column(name = "HOSPITAL_NAME")
	private String hospitalName;
	@Column(name = "PATIENT_NAME")
	private String patientName;
	@Column(name = "PATIENT_EMAIL")
	private String patientEmail;
	@Column(name = "PURPOSE")
	private String purpose;
	@Column(name = "APPOINTMENT_BILL")
	private float appointmentBill;
	public int getBillId() {
		return billId;
	}
	public void setBillId(int billId) {
		this.billId = billId;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
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
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public float getAppointmentBill() {
		return appointmentBill;
	}
	public void setAppointmentBill(float appointmentBill) {
		this.appointmentBill = appointmentBill;
	}
}

	