package com.chainsys.doctorappointmentbilling.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.DoctorDetails;

@Repository
public interface DoctorDetailsRepository extends CrudRepository<DoctorDetails, Long> {

	DoctorDetails save(DoctorDetails docdet);

	List<DoctorDetails> findAll();
}
