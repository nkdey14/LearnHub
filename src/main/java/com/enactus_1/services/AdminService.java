package com.enactus_1.services;

import com.enactus_1.entities.Admin;

public interface AdminService {

	public void saveAdminData(Admin a);

	public Admin findAdminByEmail(String email);

}
