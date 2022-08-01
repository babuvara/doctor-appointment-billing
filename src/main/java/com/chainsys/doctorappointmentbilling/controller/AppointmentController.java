package com.chainsys.doctorappointmentbilling.controller;

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
	public String getAllPersons(Model model) {
		List<Appointment> applist = appService.getappointment();
		model.addAttribute("allappointment", applist);
		return "list-appointment";
	}

	@GetMapping("/registerappointment")
	public String showRegisterForm(Model model) {
		Appointment theapp = new Appointment();
		model.addAttribute("registerappointment", theapp);
		return "register-appointment";
	}

	@PostMapping("/register")
	public String addNewPerson(@ModelAttribute("registerappointment") Appointment theapp) {
		appService.save(theapp);
		return "redirect:/appointment/getappointment";
	}

}