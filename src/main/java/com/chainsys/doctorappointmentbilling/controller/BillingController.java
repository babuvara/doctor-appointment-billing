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

import com.chainsys.doctorappointmentbilling.model.Billing;
import com.chainsys.doctorappointmentbilling.service.BillingService;

@Controller
@RequestMapping("/billing")
public class BillingController {
	@Autowired
	private BillingService billService;

	@GetMapping("/getbill")
	public String getAllBill(Model model) {
		List<Billing> billList = billService.getBill();
		model.addAttribute("allbill", billList);
		return "list-bill";
	}

	@GetMapping("/registerbill")
	public String showRegisterForm(Model model) {
		Billing theBill = new Billing();
		model.addAttribute("registerbill", theBill);
		return "register-bill";
	}

	@PostMapping("/register")
	public String addNewBill(@ModelAttribute("registerbill") Billing theBill) {
		billService.save(theBill);
		return "redirect:/billing/getbill";
	}

}