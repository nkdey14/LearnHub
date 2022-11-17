package com.enactus_1.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enactus_1.entities.Admin;
import com.enactus_1.repositories.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminRepository adminRepo;

	@Override
	public void saveAdminData(Admin a) {
		
		adminRepo.save(a);
	}

	@Override
	public Admin findAdminByEmail(String email) {
		
		Admin admin = adminRepo.findByEmail(email);
		
		return admin;
	}

}
