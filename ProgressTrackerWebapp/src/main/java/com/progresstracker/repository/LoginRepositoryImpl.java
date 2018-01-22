package com.progresstracker.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.progresstracker.model.UserProfile;

@Repository("loginRepository")
public class LoginRepositoryImpl implements LoginRepository {
	
	@PersistenceContext
	private EntityManager em;

	public boolean createAccount(UserProfile up) {
		System.out.println("LoginRepository.createAccount method called");
		em.persist(up);
		em.flush();
		System.out.println("   and persisted to db with no errors. :)");
		return true;
	}
	
	public boolean exists(String username) { 
		Query query = em.createQuery("SELECT COUNT(u.username) FROM "
				+ "UserProfile u WHERE u.username=:param");
		query.setParameter("param", username);
		long counter = 0;
		counter = (Long) query.getSingleResult();
		if (counter > 0)  { 
			return true;
		} else {
			return false;
		}
	}
}
