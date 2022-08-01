package com.chainsys.doctorappointmentbilling.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.dao.DoctorDetailsRepository;
import com.chainsys.doctorappointmentbilling.model.DoctorDetails;

@Service
public class DoctorDetailsService {
	@Autowired
	private DoctorDetailsRepository repo;

	public List<DoctorDetails> getDoctorDetails() {
		List<DoctorDetails> docdetlist = repo.findAll();
		return docdetlist;
	}

	@Transactional
	public DoctorDetails save(DoctorDetails docdet) {
		return repo.save(docdet);
	}

}
