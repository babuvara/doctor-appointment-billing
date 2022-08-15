package com.chainsys.doctorappointmentbilling.repository;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Patient;

@Repository
public interface PatientRepository extends CrudRepository<Patient, Integer> {

	@SuppressWarnings("unchecked")
	Patient save(Patient patient);

	List<Patient> findAll();

	Patient findByEmailIdAndPassword(String email, String password);
}
