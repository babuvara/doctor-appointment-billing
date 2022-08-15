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
import org.springframework.validation.Errors;
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
	private PatientService patientService;

	@GetMapping("/getpatient")
	public String getAllPatient(Model model) {
		List<Patient> patientList = patientService.getPatient();
		model.addAttribute("allpatient", patientList);
		return "list-patient";
	}

	@GetMapping("/registerpatient")
	public String showPatientDetailsRegisterForm(Model model) {
		Patient patient = new Patient();
		model.addAttribute("registerpatient", patient);
		return "register-patient";
	}

	@PostMapping("/register")
	public String addNewPatient(@Valid @ModelAttribute("registerpatient") Patient patient, Errors error) {
		if (error.hasErrors()) {
			return "register-patient";
		} else {
			patientService.save(patient);
			return "redirect:patientlogin";
		}
	}

	@GetMapping("/signuppatient")
	public String showPatientDetailsSignUpForm(Model model) {
		Patient patient = new Patient();
		model.addAttribute("signuppatient", patient);
		return "signup-patient";
	}

	@PostMapping("/signup")
	public String addSignUpPatient(@Valid @ModelAttribute("signuppatient") Patient patient,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "signup-patient";
		} else {
			patientService.save(patient);
			return "redirect:patientlogin";
		}
	}

	@GetMapping("/patientlogin")
	public String patientAccessform(Model model) {
		Patient patient = new Patient();
		model.addAttribute("patient", patient);
		return "patient-login-form";
	}

	@PostMapping("/checkpatientlogin")
	public String checkingAccess(@ModelAttribute("patient") Patient patient) {
		Patient patientLogin = patientService.getPatientByEmailIdAndPassword(patient.getEmailId(),
				patient.getPassword());
		if (patientLogin != null) {

			return "patientlogin";
		} else
			return "invalid-patient-error";

	}

}
