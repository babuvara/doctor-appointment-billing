package com.chainsys.doctorappointmentbilling.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.DTO.DoctorAppointmentDTO;
import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.repository.AppointmentRepository;
import com.chainsys.doctorappointmentbilling.repository.DoctorDetailsRepository;
import com.chainsys.doctorappointmentbilling.model.Appointment;

@Service
public class DoctorAppointmentService {

	@Autowired
	DoctorDetailsRepository doctorDetailsRepo;
	@Autowired
	AppointmentRepository appointmentRepo;

	public DoctorAppointmentDTO getAppointmentList(int DOCTOR_ID) {
		DoctorDetails doctor = doctorDetailsRepo.findById(DOCTOR_ID);
		DoctorAppointmentDTO dto = new DoctorAppointmentDTO();
		dto.setDoctor(doctor);
		List<Appointment> appointment = appointmentRepo.findByDoctorId(DOCTOR_ID);
		Iterator<Appointment> iterator = appointment.iterator();
		while (iterator.hasNext())
			dto.addAppointmentList((Appointment) iterator.next());

		return dto;
	}
}