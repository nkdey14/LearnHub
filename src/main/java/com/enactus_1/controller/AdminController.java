package com.enactus_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.entities.Admin;
import com.enactus_1.services.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	// http://localhost:8083/Enactus/
	
	@GetMapping("/showLoginPage")
	public String showMenuPage() {
		
		return "admin/loginAdmin";
	}

	// http://localhost:8083/Enactus/showRegPage
	
	@GetMapping("/showRegPage")
	public String viewRegPage() {
		
		return "admin/regAdmin";
	}
	
	@PostMapping("/saveAdmin")
	public String saveAdminDetails(@ModelAttribute("admin") Admin a, Model model) {
		
		adminService.saveAdminData(a);
		
		model.addAttribute("msg", "Registration successful!");
		
		return "admin/loginAdmin";
	}
	
	@PostMapping("/verifyLogin")
	public String verifyCredentials(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		
		Admin a = adminService.findAdminByEmail(email);
		
		if(a != null) {
			
			if(a.getEmail().equals(email) && a.getPassword().equals(password)) {
				
				model.addAttribute("msg", "Login successful!");
				
				return "admin/createStudent";
				
			}else {
				
				model.addAttribute("msg", "Invalid username or password!");
				
				return "admin/loginAdmin";
			}
		}
		else {
			
			model.addAttribute("msg", "Invalid username or password!");
			
			return "admin/loginAdmin";
		}
	}
}
