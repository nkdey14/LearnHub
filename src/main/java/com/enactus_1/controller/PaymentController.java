package com.enactus_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.entities.Payment;
import com.enactus_1.services.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;

	@GetMapping("/checkPayment")
	public String checkPaymentStatus(@RequestParam("mobile") long mobile, Model model) {
		
		Payment payment = paymentService.findPaymentByMob(mobile);
		
//		System.out.println(mobile);
		if(payment != null) {
				
				model.addAttribute("mobile", mobile);
			
				model.addAttribute("msg", "Paid");
				
				return "admin/showPaymentStatus";
				
		}else {
			
			model.addAttribute("msg", "Pending");
			
			return "admin/showPaymentStatus";
		}
	}
}
