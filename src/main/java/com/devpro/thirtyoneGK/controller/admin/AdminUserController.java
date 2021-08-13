package com.devpro.thirtyoneGK.controller.admin;

import java.io.IOException;  
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.thirtyoneGK.dto.ProductSearchModel;
import com.devpro.thirtyoneGK.entities.Categories;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.entities.Role;
import com.devpro.thirtyoneGK.entities.User;
import com.devpro.thirtyoneGK.entities.UserRole;
import com.devpro.thirtyoneGK.services.CategoriesService;
import com.devpro.thirtyoneGK.services.ProductService;
import com.devpro.thirtyoneGK.services.RoleService;
import com.devpro.thirtyoneGK.services.UserRoleService;
import com.devpro.thirtyoneGK.services.UserService;



@Controller
public class AdminUserController {
	@Autowired
	UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private UserRoleService userRoleService;
	@RequestMapping(value = { "/admin/add-user" }, method = RequestMethod.POST)
	
	public String addUser(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("userRole") UserRole useRole)
			throws Exception {
		User user = userService.getById(useRole.getUser_id());
		Role role = roleService.getById(useRole.getRole_id());

			userService.saveOrUpdate(user);
			roleService.saveOrUpdate(role);

	
		return "redirect:/admin/list-user";
	}

	@RequestMapping(value = { "/admin/add-user" }, method = RequestMethod.GET)
	public String addCate(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("role", roleService.findAll());
		model.addAttribute("user", userService.findAll());
		model.addAttribute("userRole", new UserRole());
		return "admin/add-user";
	}
	
	// lisst
	@RequestMapping(value = { "/admin/list-user" }, method = RequestMethod.GET)
	public String listUsers(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("user", userService.findAll());
		return "admin/list-user";
	}
	
	
	@RequestMapping(value = { "/admin/delete-user" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteUser_Ajax(final ModelMap model
			, final HttpServletRequest request,
			final HttpServletResponse response) {
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		
		try {
			int userId = Integer.parseInt(request.getParameter("userId"));
			User u = userService.getById(userId);
			u.setStatus(Boolean.FALSE);
			userService.saveOrUpdate(u);
			
			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");
			
		} catch (Exception e) {
			jsonResult.put("code", 500);
			jsonResult.put("message", e.getMessage());
		}
		
		return ResponseEntity.ok(jsonResult);
	}
	



}
