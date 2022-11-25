package com.enactus_1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.entities.Learner;
import com.enactus_1.entities.Payment;
import com.enactus_1.entities.Student;
import com.enactus_1.services.LearnerService;
import com.enactus_1.services.PaymentService;
import com.enactus_1.services.StudentService;

@Controller
public class LearnerController {

	@Autowired
	private LearnerService learnerService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private PaymentService paymentService;
	
	@PostMapping("/verifyCourseDetails")
	public String confirmCourseDetails(@ModelAttribute("learner") Learner l, Model model) {
		
		learnerService.saveLearner(l);
		
		Student student = studentService.findStudentByMobile(l.getMobile());
		
		studentService.deleteStudentDetails(student.getId());
		
		model.addAttribute("msg", "Learner saved successfully!");
		
		model.addAttribute("learner", l);
				
		return "admin/learnerInfo";
	}
	
	@GetMapping("/listAllLearners")
	public String viewAllLearners(Model model) {
		
		List<Learner> learners = learnerService.getAllLearners();
		
		model.addAttribute("learners", learners);
		
		return "admin/listLearners";
	}
	
	@GetMapping("/learnerInfoData")
	public String learnerInfoDetails(@RequestParam("id") int id, Model model) {
		
		Learner learner = learnerService.findLeanerById(id);
		
		model.addAttribute("learner", learner);
		
		return "admin/learnerInfo";
	}
	
	@GetMapping("/updateLearner")
	public String getLearnerInfo(@RequestParam("id") int id, Model model) {
		
		Learner learner = learnerService.findLeanerById(id);
		
		model.addAttribute("learner", learner);
		
		return "admin/updateLearner";
	}
	
	@PostMapping("/updateLearnerData")
	public String updateLeanerInfo(@ModelAttribute("learner") Learner l, Model model) {
		
		learnerService.saveLearner(l);
		
		model.addAttribute("msg", "Learner details updated successfully!");
		
		List<Learner> learners = learnerService.getAllLearners();
		
		model.addAttribute("learners", learners);
		
		return "admin/listLearners";
	}
	
	@GetMapping("/deleteLearner")
	public String deleteLeanerDetails(@RequestParam("id") int id, Model model) {
		
		learnerService.deleteLearnerData(id);
		
		model.addAttribute("msg", "Learner details deleted successfully!");
		
		List<Learner> learners = learnerService.getAllLearners();
		
		model.addAttribute("learners", learners);
		
		return "admin/listLearners";
	}
	
	@GetMapping("/searchLearner")
	public String findLearnerInfo() {
		
		return "admin/findLearner";
	}
	
	@PostMapping("/getLeanerDetails")
	public String findLeanerInfo(@RequestParam("mobile") long mobile, Model model) {
		
		Learner learner = learnerService.findLeanerByMob(mobile);
		
		if(learner != null) {
			
			model.addAttribute("learner", learner);
			
			return "admin/learnerInfo";
			
		}else {
			
			model.addAttribute("msg", "Sorry, No record found!");
			
			return "admin/findLearner";
		}
	}
	
	@GetMapping("/showCourseInfo")
	public String showLearner() {
		
		return "user/getCourseInfo";
	}
}
