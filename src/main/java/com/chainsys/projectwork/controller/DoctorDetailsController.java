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

import com.chainsys.projectwork.pojo.DoctorDetails;
import com.chainsys.projectwork.service.DoctorDetailsService;

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
	@GetMapping("/registerdoctordetails")
	public String showRegisterForm(Model model) {
		DoctorDetails thedoc = new DoctorDetails();
		model.addAttribute("registerdoctordetails", thedoc);
		return "register-doctordetails";
	}

	@PostMapping("/register")
	public String addNewPerson(@ModelAttribute("registerdoctordetails") DoctorDetails doc) {
		docdetService.save(doc);
		return "redirect:/doctordetails/getdoctordetails";
	}

}