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
	private AppointmentRepository appointRepo;

	public List<Appointment> getAppointment() {
		List<Appointment> appList = appointRepo.findAll();
		return appList;
	}

	@Transactional
	public Appointment save(Appointment app) {
		return appointRepo.save(app);
	}

}
