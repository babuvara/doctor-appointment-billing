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
import org.springframework.web.bind.annotation.RequestParam;

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
	public String showRegisterForm( Model model) {
		Billing bill = new Billing();
		bill.setHospitalName("Apollo");
		bill.setAppointmentBill(250.50f);
//		 bill.setPatientEmail(patientEmail);
//		System.out.println("dfghjkhgfdgh"+ bill.getPatientEmail());
		model.addAttribute("registerbill", bill);
		return "register-bill";
	}
	@PostMapping("/register")
	public String addNewBill(@ModelAttribute("registerbill") Billing bill) {
		billService.save(bill);
		return "redirect:/billing/getbillbyid?billId=" +bill.getBillId();
	}
	@GetMapping("/getbillbyid")
	public String finddoctorById(@RequestParam("billId") int id, Model model) {
		Billing billing = billService.findById(id);
		model.addAttribute("findbillbyid", billing);
		return "find-bill-form";
	}

}