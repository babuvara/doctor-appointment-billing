package com.chainsys.doctorappointmentbilling.repository;

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

	@SuppressWarnings("unchecked")
	DoctorDetails save(DoctorDetails doctorDetails);

	List<DoctorDetails> findAll();

	DoctorDetails findByDoctorEmailAndPassword(String doctorEmail, String password);

}
