package com.enactus_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.dto.EmailData;
import com.enactus_1.util.EmailService;

@Controller
public class EmailController {
	
	@Autowired
	private EmailService emailService;
	

	@GetMapping("/sendEmail")
	public String getEmailId(@RequestParam("email") String email, Model model) {
		
		model.addAttribute("email", email);
		
		return "admin/composeEmail";
	}
	
	@PostMapping("/triggerEmail")
	public String sendEmailMessage(EmailData data, Model model) {
		
		emailService.sendEmail(data.getEmail(), data.getSubject(), data.getContent());
		
		model.addAttribute("msg", "Email sent successfully!");
		
		return "admin/composeEmail";
	}
}
