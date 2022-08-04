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
	private AppointmentRepository repo;

	public List<Appointment> getAppointment() {
		List<Appointment> appList = repo.findAll();
		return appList;
	}

	@Transactional
	public Appointment save(Appointment app) {
		return repo.save(app);
	}

}
