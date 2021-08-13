package com.devpro.thirtyoneGK.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.thirtyoneGK.entities.SaleOrder;

@Service
public class SaleOrderService extends BaseService<SaleOrder>{
	@PersistenceContext
	protected EntityManager entityManager;
	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}
}
