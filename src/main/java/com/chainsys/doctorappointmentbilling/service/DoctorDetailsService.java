package com.chainsys.doctorappointmentbilling.service;

/**
 * @author babu3107
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.dao.DoctorDetailsRepository;
import com.chainsys.doctorappointmentbilling.model.DoctorDetails;

@Service
public class DoctorDetailsService {
	@Autowired
	private DoctorDetailsRepository doctorDetailsRepo;

	public List<DoctorDetails> getDoctorDetails() {
		List<DoctorDetails> doctorList = doctorDetailsRepo.findAll();
		return doctorList;
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

	public DoctorDetails getDoctorDetailsByNameAndPassword(String name, String password) {

		return doctorDetailsRepo.findByDoctorNameAndPassword(name, password);

	}

}
