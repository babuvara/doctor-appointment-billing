package com.chainsys.doctorappointmentbilling.service;

/**
 * @author babu3107
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.model.Patient;
import com.chainsys.doctorappointmentbilling.repository.PatientRepository;

@Service
public class PatientService {
	@Autowired
	private PatientRepository patientRepo;

	public List<Patient> getPatient() {
		return patientRepo.findAll();
	}

	@Transactional
	public Patient save(Patient patient) {
		return patientRepo.save(patient);
	}

	public List<Patient> getPatientAccess() {
		return patientRepo.findAll();
	}

	public Patient getPatientByEmailIdAndPassword(String email, String password) {
		return patientRepo.findByEmailIdAndPassword(email, password);

	}
}
