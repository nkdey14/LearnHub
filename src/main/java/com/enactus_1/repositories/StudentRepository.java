package com.enactus_1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enactus_1.entities.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

	public void deleteByEmail(String email);

	public Student findByMobile(long mobile);

}
