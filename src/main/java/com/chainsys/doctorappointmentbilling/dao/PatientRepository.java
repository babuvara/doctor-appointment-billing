package com.chainsys.doctorappointmentbilling.dao;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Patient;

@Repository
public interface PatientRepository extends CrudRepository<Patient, Long> {
	// Doctor findById(long id);

	Patient save(Patient per);

	// void deleteById(long dr_id);

	List<Patient> findAll();

	@Query(value = "select * from PATIENT ", nativeQuery = true)
	Patient getPatientAccess();

	Patient findByEmailIdAndPassword(String email, String password);
}
