package com.chainsys.doctorappointmentbilling.dao;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Appointment;

@Repository
public interface AppointmentRepository extends CrudRepository<Appointment, Integer> {
	Appointment findByAppointmentId(int id);

	Appointment save(Appointment appointment);

	List<Appointment> findAll();

	List<Appointment> findByDoctorId(int id);
}
