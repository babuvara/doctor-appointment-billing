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

import com.chainsys.doctorappointmentbilling.model.Patient;
import com.chainsys.doctorappointmentbilling.service.PatientService;

@Controller
@RequestMapping("/patient")
public class PatientController {
	@Autowired
	private PatientService ptService;

	@GetMapping("/getpatient")
	public String getAllPatient(Model model) {
		List<Patient> patientList = ptService.getPatient();
		model.addAttribute("allpatient", patientList);
		return "list-patient";
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
	@GetMapping("/registerpatient")
	public String showPatientDetailsRegisterForm(Model model) {
		Patient pat = new Patient();
		model.addAttribute("registerpatient", pat);
		return "register-patient";
	}

	@PostMapping("/register")
	public String addNewPatient(@ModelAttribute("registerpatient") Patient pat) {
		ptService.save(pat);
		return "index";
	}

	@GetMapping("/patientlogin")
	public String patientAccessform(Model model) {
		Patient thePat = new Patient();
		model.addAttribute("patient", thePat);
		return "patient-login-form";
	}

	@PostMapping("/checkpatientlogin")
	public String checkingAccess(@ModelAttribute("patient") Patient patient) {
		Patient pat = ptService.getPatientByEmailIdAndPassword(patient.getEmailId(), patient.getPassword());
		if (pat != null) {

			return "redirect:/doctordetails/getdoctordetails";
		} else
			return "invalid-patient-error";

	}
}
