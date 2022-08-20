package com.chainsys.doctorappointmentbilling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.doctorappointmentbilling.dto.DoctorAppointmentDTO;
import com.chainsys.doctorappointmentbilling.service.DoctorAppointmentService;

@Controller
@RequestMapping("/doctorappointment")
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