package com.chainsys.doctorappointmentbilling.controller;

/**
 * @author babu3107
 */
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	@GetMapping("/registerpatient")
	public String showPatientDetailsRegisterForm(Model model) {
		Patient pat = new Patient();
		model.addAttribute("registerpatient", pat);
		return "register-patient";
	}

	@PostMapping("/register")
	public String addNewPatient(@Valid @ModelAttribute("registerpatient") Patient pat, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "register-patient";
		} else {
			ptService.save(pat);
			return "Registration-success-patient";
		}
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

			return "patientlogin";
		} else
			return "invalid-patient-error";

	}
}
