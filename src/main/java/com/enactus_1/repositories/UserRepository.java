package com.enactus_1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enactus_1.entities.Admin;
import com.enactus_1.entities.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	public User findByEmail(String email);

}
