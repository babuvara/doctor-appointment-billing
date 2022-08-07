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

	@GetMapping("/bookdoctordetails")
	public String BookDoctorDetails(Model model) {
		List<DoctorDetails> doctorDetailsList = docDetService.getDoctorDetails();
		model.addAttribute("alldoctordetails", doctorDetailsList);
		return "book-doctordetails";
	}

	@GetMapping("/registerdoctordetails")
	public String showRegisterForm(Model model) {
		DoctorDetails theDoc = new DoctorDetails();
		model.addAttribute("registerdoctordetails", theDoc);
		return "register-doctordetails";
	}

	@PostMapping("/register")
	public String addNewDoctor(@Valid @ModelAttribute("registerdoctordetails") DoctorDetails doc,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "register-doctordetails";
		} else {
			docDetService.save(doc);
			return "Registration-success-doctor";
		}
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

			return "doctorlogin";
		} else
			return "invalid-doctor-error";

	}

}