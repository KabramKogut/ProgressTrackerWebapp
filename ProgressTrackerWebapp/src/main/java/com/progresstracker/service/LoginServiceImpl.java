package com.progresstracker.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.progresstracker.model.Authority;
import com.progresstracker.model.UserProfile;
import com.progresstracker.repository.LoginRepository;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginRepository loginRepository;

	@Transactional
	public boolean createAccount(UserProfile up) {
		System.out.println("LoginService.createAccount method called\n");
		
		if (loginRepository.exists(up.getUsername())) { 
			return false;
		}

		Authority authority = new Authority();
		authority.setAuthority(Authority.ROLE_USER);
		authority.setUser(up);
		List<Authority> authorities = new ArrayList<Authority>();
		authorities.add(authority);
		
		up.setAuthorities(authorities);
		up.setEnabled(true);
		
		if (loginRepository.createAccount(up)) {
			return true;
		} else { 
			return false;
		}
	}

}
