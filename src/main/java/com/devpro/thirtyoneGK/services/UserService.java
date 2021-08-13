package com.devpro.thirtyoneGK.services;

import java.util.List; 

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.thirtyoneGK.entities.User;




@Service
public class UserService extends BaseService<User> {
	@PersistenceContext
	protected EntityManager entityManager;

	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<User> clazz() {
		return User.class;
	}
	
	public User loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "'";
		List<User> users = this.executeNativeSql(sql);
		if(users == null || users.size() <= 0) return null;
		return users.get(0);
	}

	
}
