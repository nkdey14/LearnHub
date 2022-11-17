package com.enactus_1.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enactus_1.entities.Student;
import com.enactus_1.repositories.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository studentRepo;

	@Override
	public void saveStudentData(Student s) {
		
		studentRepo.save(s);
	}

	@Override
	public List<Student> findAllStudents() {
		
		List<Student> students = studentRepo.findAll();
		
		return students;
	}

	@Override
	public Student findStudentById(int id) {
		
		Optional<Student> findById = studentRepo.findById(id);
		
		Student student = findById.get();
		
		return student;
	}

	@Override
	public void deleteStudentDetails(int id) {
		
		studentRepo.deleteById(id);
	}
}
