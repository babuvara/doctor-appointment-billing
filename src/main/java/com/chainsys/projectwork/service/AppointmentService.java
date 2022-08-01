package com.chainsys.projectwork.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.projectwork.dao.AppointmentRepository;
import com.chainsys.projectwork.pojo.Appointment;





@Service
public class AppointmentService {
	@Autowired
	private AppointmentRepository repo;


	public List<Appointment> getappointment() {
		List<Appointment> applist = repo.findAll();
		return applist;
	}

	@Transactional
	public Appointment save(Appointment app) {
		return repo.save(app);
	}

//	public Doctor findById(long id) {
//		return repo.findById(id);
//	}
//
//	@Transactional
//	public Doctor deleteById(long id) {
//		return repo.findById(id);
//	}
//
//	public DoctorAppointmentsDTO getdoctorAndAppointments(int id) {
//		Doctor dr = findById(id);
//		DoctorAppointmentsDTO dto = new DoctorAppointmentsDTO(); // DTO data transfer Object
//		dto.setDoctor(dr);
//
//		for (int i = 0; i <= 5; i++) {
//			Appointment app = new Appointment();
//			app.setApp_id(i);
//			Date dt = new Date(22, 07, 25);
//			app.setApp_date(dt);
//			app.setDoc_id(id);
//			app.setPatient_name("Babu");
//			app.setFees_collected(i * 500);
//			dto.addAppointment(app);
//		}
//		return dto;
//
//	}
//
//	public void addDoctorAndAppointments(DoctorAppointmentsDTO dto) {
//		Doctor dr = dto.getDoctor();
//		save(dr);
//		List<Appointment> appointmentList = dto.getAppointment();
//		int count = appointmentList.size();
//		for (int i = 0; i <= count; i++) {
//			apprepo.save(appointmentList.get(i));
//		}
//	}
}
