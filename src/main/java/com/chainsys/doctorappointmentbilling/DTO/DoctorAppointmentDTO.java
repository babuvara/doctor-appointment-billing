package com.chainsys.doctorappointmentbilling.dto;

/**
 * @author babu3107
 */
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.doctorappointmentbilling.model.Appointment;
import com.chainsys.doctorappointmentbilling.model.DoctorDetails;

public class DoctorAppointmentDTO {

	@Autowired
	private DoctorDetails doctorDetails;

	private List<Appointment> appointmentList = new ArrayList<Appointment>();

	public DoctorDetails getDoctorId() {
		return doctorDetails;
	}

	public void setDoctor(DoctorDetails doctorDetails) {
		this.doctorDetails = doctorDetails;
	}

	public List<Appointment> getAppointmentList() {
		return appointmentList;
	}

	public void addAppointmentList(Appointment appointmentlist) {
		appointmentList.add(appointmentlist);
	}

}