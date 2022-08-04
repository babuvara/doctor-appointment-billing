package com.chainsys.doctorappointmentbilling.DTO;

/**
 * @author babu3107
 */
import java.util.ArrayList;
import java.util.List;

import com.chainsys.doctorappointmentbilling.model.Appointment;
import com.chainsys.doctorappointmentbilling.model.Patient;

public class DoctorAppointmentDTO {
	private Patient patient;
	private List<Appointment> appList = new ArrayList<Appointment>();

	public Patient getDoctor() {
		return patient;
	}

	public void setPerson(Patient patient) {
		this.patient = patient;
	}

	public void addAppointment(Appointment app) {
		appList.add(app);
	}

	public List<Appointment> getAppointment() {
		return appList;
	}
}
