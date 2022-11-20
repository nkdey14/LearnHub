package com.enactus_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.dto.PaymentData;
import com.enactus_1.services.LearnerService;

@Controller
public class BillingController {
	
	@Autowired
	private LearnerService learnerService;
	
	@GetMapping("/proceedPayment")
	public String continuePayment(@RequestParam("mobile") long mobile, @RequestParam("fees") String fees, Model model) {
		
		model.addAttribute("fees", fees);
		
		model.addAttribute("mobile", mobile);
		
		return "user/viewPaymentPage";
	}
	
	@PostMapping("/confirmPayment")
	public String confirmTransaction(PaymentData data, Model model) {
		
		model.addAttribute("msg", "Payment successful!");
		
//		Learner learner = learnerService.findLeanerByMob(data.getMobile());
		
		return "user/paymentSuccess";
	}
}
