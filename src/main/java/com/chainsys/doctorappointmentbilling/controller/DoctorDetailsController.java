package com.chainsys.doctorappointmentbilling.controller;

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
	private DoctorDetailsService docdetService;

	@GetMapping("/getdoctordetails")
	public String getAllDoctorDetails(Model model) {
		List<DoctorDetails> doctordetailslist = docdetService.getDoctorDetails();
		model.addAttribute("alldoctordetails", doctordetailslist);
		return "list-doctordetails";
	}

	@GetMapping("/registerdoctordetails")
	public String showRegisterForm(Model model) {
		DoctorDetails thedoc = new DoctorDetails();
		model.addAttribute("registerdoctordetails", thedoc);
		return "register-doctordetails";			
	}

	@PostMapping("/register")
	public String addNewPerson(@ModelAttribute("registerdoctordetails") DoctorDetails doc) {
		docdetService.save(doc);
		return "redirect:/billing/getbill";
	}

	@DeleteMapping("/deletedoctordetails")
	public String deleteDoctorDetails(DoctorDetails docdet) {
		docdetService.save(docdet);
		return "redirect:/doctordetails/getdoctordetails";
	}

}