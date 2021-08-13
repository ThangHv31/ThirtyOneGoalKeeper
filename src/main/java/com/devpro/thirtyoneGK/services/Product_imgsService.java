package com.devpro.thirtyoneGK.services;


import javax.persistence.EntityManager; 
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Service;

import com.devpro.thirtyoneGK.entities.Product_img;


@Service
public class Product_imgsService extends BaseService<Product_img> {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<Product_img> clazz() {
		return Product_img.class;
	}
}
