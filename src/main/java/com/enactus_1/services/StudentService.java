package com.enactus_1.services;

import java.util.List;

import com.enactus_1.entities.Student;

public interface StudentService {

	public void saveStudentData(Student s);

	public List<Student> findAllStudents();

	public Student findStudentById(int id);

	public void deleteStudentDetails(int id);

	public void deleteStudentByEmail(String email);

	public Student findStudentByMobile(long mobile);

}
