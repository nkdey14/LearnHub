package com.enactus_1.services;

import com.enactus_1.entities.User;

public interface UserService {

	public void saveUser(User u);

	public User findUserByEmail(String email);

}
