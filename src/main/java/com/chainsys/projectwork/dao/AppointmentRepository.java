package com.chainsys.projectwork.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.projectwork.pojo.Appointment;




@Repository
public interface AppointmentRepository extends CrudRepository<Appointment, Long> {
	// Doctor findById(long id);

	Appointment save(Appointment theapp);

	// use for adding a new Doctor
	// void deleteById(long dr_id);

	List<Appointment> findAll();
}
