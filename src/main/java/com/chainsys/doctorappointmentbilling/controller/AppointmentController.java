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

import com.chainsys.doctorappointmentbilling.model.Appointment;
import com.chainsys.doctorappointmentbilling.service.AppointmentService;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {
	@Autowired
	private AppointmentService appService;

	@GetMapping("/getappointment")
	public String getAllAppointments(Model model) {
		List<Appointment> appList = appService.getAppointment();
		model.addAttribute("allappointment", appList);
		return "list-appointment";
	}

	@GetMapping("/registerappointment")
	public String showRegisterForm(Model model) {
		Appointment theApp = new Appointment();
		model.addAttribute("registerappointment", theApp);
		return "register-appointment";
	}

	@PostMapping("/register")
	public String addNewPerson(@ModelAttribute("registerappointment") Appointment theApp) {
		appService.save(theApp);
		return "redirect:/appointment/getappointment";
	}

}