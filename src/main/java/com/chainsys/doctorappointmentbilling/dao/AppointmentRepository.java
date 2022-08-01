package com.chainsys.doctorappointmentbilling.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Appointment;

@Repository
public interface AppointmentRepository extends CrudRepository<Appointment, Long> {
	Appointment save(Appointment app);

	List<Appointment> findAll();
}
