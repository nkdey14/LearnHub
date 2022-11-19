package com.enactus_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.entities.Learner;
import com.enactus_1.entities.User;
import com.enactus_1.services.LearnerService;
import com.enactus_1.services.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private LearnerService learnerService;
	
//	http://localhost:8083/Enactus/
	
	@GetMapping("/showUserRegPage")
	public String viewRegPage() {
		
		return "user/regUser";
	}
	
	@GetMapping("/showUserLoginPage")
	public String viewLoginPage() {
		
		return "user/loginUser";
	}
	
	@PostMapping("/saveUser")
	public String registerUser(@ModelAttribute("user") User u, Model model) {
		
		userService.saveUser(u);
		
		model.addAttribute("msg", "Registration successful!");
		
		return "user/loginUser";
	}
	
	@RequestMapping("/verifyUserLogin")
	public String verifyCredentials(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		
		User user = userService.findUserByEmail(email);
		
		if(user != null) {
			
			if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
				
				Learner learner = learnerService.findLeanerByMob(user.getMobile());
				
				model.addAttribute("learner", learner);
				
				model.addAttribute("msg", "Login successful!");
				
				return "user/learnerInfo";
				
			}else {
				
				model.addAttribute("msg", "Invalid username or password!");
				
				return "user/loginUser";
			}
		}
		else {
			
			model.addAttribute("msg", "Invalid username or password!");
			
			return "user/loginUser";
		}
	}
}
