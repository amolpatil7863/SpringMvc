package com.spring.securitywithjdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		System.out.println("****************ShowLogin************");
		// return "plain-login";

		return "plain-login";

	}

	// add request mapping for /access-denied

	@GetMapping("/access-denied")
	public String showAccessDenied() {

		return "access-denied";

	}

	@GetMapping(value = "/logout")
	public String logout(ModelMap model) {
		System.out.println("Logged out from app!!!!!!!!!!!!!!!!");
		model.addAttribute("message", "You have successfully logged off from application !");
		return "logout";

	}

}
