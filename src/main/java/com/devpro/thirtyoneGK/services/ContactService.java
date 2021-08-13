package com.devpro.thirtyoneGK.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.thirtyoneGK.entities.Contact;
import com.devpro.thirtyoneGK.entities.Product;

@Service
public class ContactService extends BaseService<Contact>{
	@PersistenceContext
	EntityManager entityManager;
	@Autowired
	Product_imgsService product_imgsService;
	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}
}
