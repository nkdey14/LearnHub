package com.enactus_1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enactus_1.entities.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

	public Admin findByEmail(String email);

}
