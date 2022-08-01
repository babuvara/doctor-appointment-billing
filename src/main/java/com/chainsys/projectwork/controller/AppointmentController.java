package com.chainsys.projectwork.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chainsys.projectwork.pojo.Appointment;
import com.chainsys.projectwork.service.AppointmentService;

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

//	@Bean
//	public void setRepo(DoctorRepository repo) {
//		this.repo = repo;
//	}
//	@DeleteMapping("/deletedoctor")
//	public String deleteDoctor(int id) {
//		repo.deleteById(id);
//		return "redirect:/getalldoctors";
//	}
//
//	@PostMapping(value = "/newdoctor", consumes = "application/json")
//	// we need give from where to read data from the HTTP request and also the
//	// content type ("application/json")
//	public String addDoctor(@RequestBody Doctor dr) {
//		repo.save(dr);
//		return "redirect:/getalldoctors";
//
//	}
//
//	@PostMapping(value = "/modifydoctor", consumes = "application/json")
//	public String modifyDoctor(@RequestBody Doctor dr) {
//		repo.save(dr);
//		return "redirect:/getalldoctors";
//
//	}
//
//	@GetMapping("/getalldoctors")
//	public List<Doctor> getDoctors() {
//		return repo.findAll();
//	}
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