package com.chainsys.doctorappointmentbilling.controller;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.doctorappointmentbilling.model.DoctorDetails;
import com.chainsys.doctorappointmentbilling.service.DoctorDetailsService;

@Controller
@RequestMapping("/doctordetails")
public class DoctorDetailsController {
	@Autowired
	private DoctorDetailsService docDetService;

	@GetMapping("/getdoctordetails")
	public String getAllDoctorDetails(Model model) {
		List<DoctorDetails> doctorDetailsList = docDetService.getDoctorDetails();
		model.addAttribute("alldoctordetails", doctorDetailsList);
		return "list-doctordetails";
	}

	@GetMapping("/registerdoctordetails")
	public String showRegisterForm(Model model) {
		DoctorDetails theDoc = new DoctorDetails();
		model.addAttribute("registerdoctordetails", theDoc);
		return "register-doctordetails";
	}

	@PostMapping("/register")
	public String addNewDoctor(@ModelAttribute("registerdoctordetails") DoctorDetails doc) {
		docDetService.save(doc);
		return "redirect:/billing/getbill";
	}

	@GetMapping("/doctorlogin")
	public String doctorAccessform(Model model) {
		DoctorDetails theDoc = new DoctorDetails();
		model.addAttribute("doctor", theDoc);
		return "doctor-login-form";
	}

	@PostMapping("/checkdoctorlogin")
	public String checkingAccess(@ModelAttribute("doctor") DoctorDetails theDoc) {
		DoctorDetails doctor = docDetService.getDoctorDetailsByNameAndPassword(theDoc.getDoctorName(),
				theDoc.getPassword());
		if (doctor != null) {

			return "redirect:/patient/getpatient";
		} else
			return "invalid-doctor-error";

	}

}