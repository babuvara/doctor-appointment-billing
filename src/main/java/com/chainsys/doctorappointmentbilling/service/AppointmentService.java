package com.chainsys.doctorappointmentbilling.service;

/**
 * @author babu3107
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.dao.AppointmentRepository;
import com.chainsys.doctorappointmentbilling.model.Appointment;

@Service
public class AppointmentService {
	@Autowired
	private AppointmentRepository appointmentRepo;

	public List<Appointment> getAppointment() {
		List<Appointment> appointmentList = appointmentRepo.findAll();
		return appointmentList;
	}

	@Transactional
	public Appointment save(Appointment appointment) {
		return appointmentRepo.save(appointment);
	}

}
