package com.progresstracker.repository;

import com.progresstracker.model.UserProfile;

public interface LoginRepository {
	
	boolean createAccount(UserProfile up);

	boolean exists(String username);

}
