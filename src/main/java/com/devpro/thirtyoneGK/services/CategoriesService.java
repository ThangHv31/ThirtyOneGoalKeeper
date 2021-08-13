package com.devpro.thirtyoneGK.services;

import java.util.ArrayList; 
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.thirtyoneGK.dto.CategoriesModel;
import com.devpro.thirtyoneGK.entities.Categories;



@Service
public class CategoriesService extends BaseService<Categories> {
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}

	/**
	 * tra ve danh sach Menu cha.
	 * @return
	 */
	public List<Categories> getAllParents() {
		String sql = "select * from tbl_category tc where tc.parent_id is null";
		return this.executeNativeSql(sql);
	}
	
	/**
	 * tim kiem danh sach categories.
	 * @param searchModel
	 * @return
	 */
	public List<Categories> search(CategoriesModel searchModel) {
		String sql = "SELECT * FROM tbl_category c WHERE 1=1";

		if (searchModel != null) {
			if (searchModel.getId() > 0) {
				sql = sql + " AND c.id = " + searchModel.getId();
			}
			if (searchModel.getName() != null && !searchModel.getName().isEmpty()) {
				sql = sql + " AND c.name like '%" + searchModel.getId() + "%'";
			}
		}
		
		return this.executeNativeSql(sql);
	}
}