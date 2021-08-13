package com.devpro.thirtyoneGK.controller.user;

import java.util.List;  
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.thirtyoneGK.entities.Categories;
import com.devpro.thirtyoneGK.entities.User;
import com.devpro.thirtyoneGK.services.CategoriesService;



public abstract class BaseController {
	
	@Autowired
	private CategoriesService categoriesService;
	
	@ModelAttribute("isLogined")
	public boolean isLogined() {
	boolean	isLogined = false;
	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	if (principal instanceof UserDetails) {
		isLogined = true;
	}
	return isLogined;
}
	@ModelAttribute("userLogined")
	public User getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails) {
			return (User) userLogined;
		}
		return null;
	}
	
	@ModelAttribute("menus")
	public String getCategories() {
		return this.buildMenu();
	}
	
	private String buildMenu() {
		StringBuilder menu = new StringBuilder();

		// danh sach menu cha
		List<Categories> categories = categoriesService.getAllParents();
		
		for (Categories c : categories) {
			menu.append("<li> <a href=\"/category/"+c.getSeo()+"\">" + c.getName() + "</a>");
			
			if (c.getChilds() != null && !c.getChilds().isEmpty()) {
				recursiveMenu(menu, c.getChilds());
			}
			
			menu.append("</li>");
		}

		return menu.toString();
	}
	
	private void recursiveMenu(StringBuilder menu, Set<Categories> childs) {
		menu.append("<ul>");
		for (Categories c : childs) {
			menu.append("<li> <a href=\"/category/"+c.getSeo()+"\">" + c.getName() + "</a>");
			if (c.getChilds() != null && !c.getChilds().isEmpty()) {
				recursiveMenu(menu, c.getChilds());
				menu.append("</li>");
			} else {
				menu.append("</li>");
			}
		}
		menu.append("</ul>");
	}
}
