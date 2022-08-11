package com.chainsys.doctorappointmentbilling.controller;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.doctorappointmentbilling.model.Appointment;
import com.chainsys.doctorappointmentbilling.service.AppointmentService;
import com.chainsys.doctorappointmentbilling.service.DoctorDetailsService;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {
	@Autowired
	private AppointmentService appointmentService;
	
	@Autowired
	private DoctorDetailsService doctorService;

	@GetMapping("/getappointment")
	public String getAllAppointments(Model model) {
		List<Appointment> appointmentList = appointmentService.getAppointment();
		model.addAttribute("allappointment", appointmentList);
		return "list-appointment";
	}

	@GetMapping("/registerappointment")
	public String showRegisterForm(@RequestParam("doctorId") int id, Model model) {
		Appointment appointment = new Appointment();
		appointment.setDoctorId(id);
		appointment.setAppointmentStatus("Booked");
		model.addAttribute("registerappointment", appointment);
		return "register-appointment";
	}
	@PostMapping("/register")
	public String addNewPerson(@ModelAttribute("registerappointment") Appointment appointment) {
		appointmentService.save(appointment);
		return "redirect:/appointment/getappointment";
	}

}