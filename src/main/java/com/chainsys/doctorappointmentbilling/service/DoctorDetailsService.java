package com.chainsys.doctorappointmentbilling.service;

/**
 * @author babu3107
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.repository.DoctorDetailsRepository;

@Service
public class DoctorDetailsService {
	@Autowired
	private DoctorDetailsRepository doctorDetailsRepo;

	public List<DoctorDetails> getDoctorDetails() {
	
		return doctorDetailsRepo.findAll();
	}
	
	public DoctorDetails findById(int id) {
		return doctorDetailsRepo.findById(id);
	}

	@Transactional
	public DoctorDetails save(DoctorDetails doctorDetails) {
		return doctorDetailsRepo.save(doctorDetails);
	}

	@Transactional
	public DoctorDetails deleteBooking(DoctorDetails doctorDetails) {
		return doctorDetailsRepo.save(doctorDetails);
	}

	public DoctorDetails getDoctorDetailsByEmailAndPassword(String doctorEmail, String password) {
		return doctorDetailsRepo.findByDoctorEmailAndPassword(doctorEmail, password);
	}

}
