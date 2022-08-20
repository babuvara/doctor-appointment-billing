package com.chainsys.doctorappointmentbilling.controller;

/**
 * @author babu3107
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/register")
	public String register() {
		return "register";

	}
}
