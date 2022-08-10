package com.chainsys.doctorappointmentbilling.dao;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.DoctorDetails;

@Repository
public interface DoctorDetailsRepository extends CrudRepository<DoctorDetails, Integer> {
	DoctorDetails findById(int id);

	DoctorDetails save(DoctorDetails doctorDetails);

	List<DoctorDetails> findAll();

	DoctorDetails findByDoctorNameAndPassword(String name, String password);

}
