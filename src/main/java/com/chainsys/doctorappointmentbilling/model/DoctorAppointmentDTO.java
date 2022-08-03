package com.chainsys.doctorappointmentbilling.model;

import java.util.ArrayList;
import java.util.List;

public class DoctorAppointmentDTO {
	private Person person;
	private List<Appointment> applist = new ArrayList<Appointment>();
	public Person getDoctor() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public void addAppointment(Appointment app) {
		applist.add(app);
	}
	public List<Appointment> getAppointment(){
		return applist;
	}
}
