package com.chainsys.doctorappointmentbilling.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.doctorappointmentbilling.model.Person;
import com.chainsys.doctorappointmentbilling.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {
	@Autowired
	private PersonService prService;

	@GetMapping("/getperson")
	public String getAllPersons(Model model) {
		List<Person> personlist = prService.getperson();
		model.addAttribute("allperson", personlist);
		return "list-person";
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
	@GetMapping("/registerperson")
	public String showPersonDetailsRegisterForm(Model model) {
		Person per = new Person();
		model.addAttribute("registerperson", per);
		return "register-person";
	}

	@PostMapping("/register")
	public String addNewPerson(@ModelAttribute("registerperson") Person per) {
		prService.save(per);
//		if (per.getPersonType().equals("Doctor")) {
			return "redirect:/person/login";

//		} else {
//
//			return "redirect:/doctordetails/getdoctordetails";
//		}
	}

	@GetMapping("/login")
	public String personLogin(Model model) {
		Person theper = new Person();
		model.addAttribute("person", theper);
		return "person-login-form";
	}

	@PostMapping("/check")
	public String checkingAccess(@ModelAttribute("person") Person person) {
		Person personAccess = prService.getPersonAccess();
		if ((personAccess.getEmailId().equals(person.getEmailId()))
				&& (personAccess.getPassword().equals(person.getPassword()))) {
			return "redirect:/doctordetails/getdoctordetails";
		} else
			return null;

	}

}