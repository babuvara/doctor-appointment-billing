package com.chainsys.doctorappointmentbilling.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.doctorappointmentbilling.dao.AppointmentRepository;
import com.chainsys.doctorappointmentbilling.dao.DoctorDetailsRepository;
import com.chainsys.doctorappointmentbilling.DTO.DoctorAppointmentDTO;
import com.chainsys.doctorappointmentbilling.model.Appointment;
import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.service.DoctorAppointmentService;
import com.chainsys.doctorappointmentbilling.service.DoctorDetailsService;

@Controller
@RequestMapping("/doctorappointmentservice")
public class DoctorAppointmentController {
	@Autowired
	DoctorAppointmentService doctorAppointmentService;

	@GetMapping("/getdoctorappointmentlist")
	public String getDoctorAppointment(@RequestParam("doctorId") int id, Model model) {
		DoctorAppointmentDTO doctorAppointmentDto = doctorAppointmentService.getAppointmentList(id);
		model.addAttribute("getdoctor", doctorAppointmentDto.getDoctorId());
		model.addAttribute("appointmentlist", doctorAppointmentDto.getAppointmentList());
		return "doctor-appointment-list";
	}

}