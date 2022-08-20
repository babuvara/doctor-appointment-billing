package com.chainsys.doctorappointmentbilling.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.repository.AppointmentRepository;
import com.chainsys.doctorappointmentbilling.repository.DoctorDetailsRepository;
import com.chainsys.doctorappointmentbilling.dto.DoctorAppointmentDTO;
import com.chainsys.doctorappointmentbilling.model.Appointment;

@Service
public class DoctorAppointmentService {

	@Autowired
	DoctorDetailsRepository doctorDetailsRepo;
	@Autowired
	AppointmentRepository appointmentRepo;

	public DoctorAppointmentDTO getAppointmentList(int id) {
		DoctorDetails doctor = doctorDetailsRepo.findById(id);
		DoctorAppointmentDTO dto = new DoctorAppointmentDTO();
		dto.setDoctor(doctor);
		List<Appointment> appointment = appointmentRepo.findByDoctorId(id);
		Iterator<Appointment> iterator = appointment.iterator();
		while (iterator.hasNext())
			dto.addAppointmentList(iterator.next());

		return dto;
	}
}