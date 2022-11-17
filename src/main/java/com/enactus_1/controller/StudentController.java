package com.enactus_1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.entities.Student;
import com.enactus_1.services.StudentService;

@Controller
public class StudentController {

//	@GetMapping("/viewCreateStudent")
//	public String showCreateStudent() {
//		
//		return "admin/createStudent";
//	}
	
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/viewCreateStudent")
	public String showStudentCreatePage() {
		
		return "admin/createStudent";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudentDetails(@ModelAttribute("student") Student s, Model model) {
		
		studentService.saveStudentData(s);
		
		model.addAttribute("student", s);
		
		model.addAttribute("msg", "Student saved successfully!");
		
		return "admin/studentInfo";
	}
	
	@GetMapping("/listAllStudents")
	public String getAllStudents(Model model) {
		
		List<Student> students = studentService.findAllStudents();
		
		model.addAttribute("students", students);
		
		return "admin/listStudents";
	}
	
	@GetMapping("/updateStudent")
	public String getStudentInfo(@RequestParam("id") int id, Model model) {
		
		Student student = studentService.findStudentById(id);
		
		model.addAttribute("student", student);
		
		return "admin/updateStudent";
	}
	
	@PostMapping("/updateStudentData")
	public String updateStudentInfo(@ModelAttribute("student") Student s, Model model) {
		
		studentService.saveStudentData(s);
		
		model.addAttribute("msg", "Student details updated successfully!");
		
		List<Student> students = studentService.findAllStudents();
		
		model.addAttribute("students", students);
		
		return "admin/listStudents";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudentInfo(@RequestParam("id") int id, Model model) {
		
		studentService.deleteStudentDetails(id);
		
		model.addAttribute("msg", "Student details updated successfully!");
		
		List<Student> students = studentService.findAllStudents();
		
		model.addAttribute("students", students);
		
		return "admin/listStudents";
	}
}
