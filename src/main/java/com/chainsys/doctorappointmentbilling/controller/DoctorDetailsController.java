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
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.service.DoctorDetailsService;

@Controller
@RequestMapping("/doctordetails")
public class DoctorDetailsController {
	@Autowired
	private DoctorDetailsService doctorDetailsService;

	@GetMapping("/getdoctordetails")
	public String getAllDoctorDetails(Model model) {
		List<DoctorDetails> doctorDetailsList = doctorDetailsService.getDoctorDetails();
		model.addAttribute("alldoctordetails", doctorDetailsList);
		return "list-doctordetails";
	}

	@GetMapping("/bookdoctordetails")
	public String BookDoctorDetails( Model model) {
		List<DoctorDetails> doctorDetailsList = doctorDetailsService.getDoctorDetails();
		model.addAttribute("alldoctordetails", doctorDetailsList);
		
		return "book-doctordetails";
	}
	

	@GetMapping("/registerdoctordetails")
	public String showRegisterForm(Model model) {
		DoctorDetails doctorDetails = new DoctorDetails();
		model.addAttribute("registerdoctordetails", doctorDetails);
		return "register-doctordetails";
	}

	@PostMapping("/register")
	public String addNewDoctor(@Valid @ModelAttribute("registerdoctordetails") DoctorDetails doctor,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "register-doctordetails";
		} else {
			doctorDetailsService.save(doctor);
			
			return "Registration-success-doctor";
		}
	}

	@GetMapping("/doctorlogin")
	public String doctorAccessform(Model model) {
		DoctorDetails doctorDetails = new DoctorDetails();
		model.addAttribute("doctor", doctorDetails);
		return "doctor-login-form";
	}

	@PostMapping("/checkdoctorlogin")
	public String checkingAccess(@ModelAttribute("doctor") DoctorDetails doctorDetails) {
		DoctorDetails doctorLogin = doctorDetailsService.getDoctorDetailsByNameAndPassword(doctorDetails.getDoctorName(),
				doctorDetails.getPassword());
		if (doctorLogin != null) {

			return "doctorlogin";
		} else
			return "invalid-doctor-error";

	}

}