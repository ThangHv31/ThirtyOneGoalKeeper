package com.devpro.thirtyoneGK.services;

import java.util.List; 

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.thirtyoneGK.entities.Role;
import com.devpro.thirtyoneGK.entities.User;




@Service
public class RoleService extends BaseService<Role> {
	@PersistenceContext
	protected EntityManager entityManager;

	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<Role> clazz() {
		return Role.class;
	}
	
	

	
}
