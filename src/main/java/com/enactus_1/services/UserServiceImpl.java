package com.enactus_1.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enactus_1.entities.Admin;
import com.enactus_1.entities.User;
import com.enactus_1.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepo;

	@Override
	public void saveUser(User u) {
		
		userRepo.save(u);
	}

	@Override
	public User findUserByEmail(String email) {
		
		User user = userRepo.findByEmail(email);
		
		return user;
	}

}
