package com.enactus_1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BillingController {

	
	@GetMapping("/proceedPayment")
	public String continuePayment(@RequestParam("mobile") long mobile, Model model) {
		
		return "user/viewPaymentPage";
	}
}
