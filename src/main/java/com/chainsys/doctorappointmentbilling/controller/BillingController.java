package com.chainsys.doctorappointmentbilling.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.doctorappointmentbilling.model.Billing;
import com.chainsys.doctorappointmentbilling.service.BillingService;

@Controller
@RequestMapping("/billing")
public class BillingController {
	@Autowired
	private BillingService billService;

	@GetMapping("/getbill")
	public String getAllPersons(Model model) {
		List<Billing> billlist = billService.getbill();
		model.addAttribute("allbill", billlist);
		return "list-bill";
	}

	@GetMapping("/registerbill")
	public String showRegisterForm(Model model) {
		Billing thebill = new Billing();
		model.addAttribute("registerbill", thebill);
		return "register-bill";
	}

	@PostMapping("/register")
	public String addNewBill(@ModelAttribute("registerbill") Billing thebill) {
		billService.save(thebill);
		return "redirect:/billing/getbill";
	}

}