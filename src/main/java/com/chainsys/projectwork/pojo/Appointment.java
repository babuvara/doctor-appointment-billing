package com.chainsys.projectwork.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "APPOINTMENT")
public class Appointment {
	@Id
	@Column(name = "APPOINTMENT_ID")
	private int appointment_id;
	@Column(name = "APPOINTMENT_DATE")
	private Date appointment_date;
	@Column(name = "APPOINTMENT_TIME")
	private String appointment_time;
	@Column(name = "DOCTOR_ID")
	private int patient_id;
	@Column(name = "DOCTOR_ID")
	private String purpose;
	@Column(name = "DOCTOR_ID")
	private int doctor_id;
	@Column(name = "DOCTOR_ID")
	private String appointment_status;

	
}
