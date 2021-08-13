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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.thirtyoneGK.entities.Categories;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.services.CategoriesService;
import com.devpro.thirtyoneGK.services.ProductService;



@Controller
public class AdminCategoryController {
	@Autowired
	ProductService productService;
	@Autowired
	private CategoriesService categoriesService;

//	@RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
//	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		model.addAttribute("categories", categoriesService.findAll());
//		model.addAttribute("admin", new Admin());
//		return "admin/admin";
//	}
	///// add
//	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.POST)
//	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response, @ModelAttribute("product") Product product,
//			@RequestParam("productAvatar") MultipartFile productAvatar,
//			@RequestParam("productImages") MultipartFile[] productImages)
//
//			throws Exception {
//		if (product.getId() != null && product.getId() > 0) {
//			productService.edit(product, productAvatar, productImages);
//
//		} else {
//			productService.save(product, productAvatar, productImages);
//		}
//
//		return "redirect:/admin/list-product";
//	}

	// lisst
	@RequestMapping(value = { "/admin/add-category" }, method = RequestMethod.POST)
	public String addCatePost(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("category") Categories categories)
			

			throws Exception {
		
			categoriesService.saveOrUpdate(categories);

	
		return "redirect:/admin/list-category";
	}
	@RequestMapping(value = { "/admin/list-category" }, method = RequestMethod.GET)
	public String listate(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("categories", categoriesService.findAll());
		return "admin/list-category";
	}
	

	@RequestMapping(value = { "/admin/add-category" }, method = RequestMethod.GET)
	public String addCate(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("category", new Categories());
		return "admin/add-category";
	}

	//// edit
	@RequestMapping(value = { "/admin/edit-category" }, method = RequestMethod.GET)
	public String editCate(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int categoryId = Integer.parseInt(request.getParameter("id"));
		Categories categories = categoriesService.getById(categoryId);

		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("category", categories);
		return "admin/add-category";
	}
	@RequestMapping(value = { "/admin/delete-category" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteCategory_Ajax(final ModelMap model
			, final HttpServletRequest request,
			final HttpServletResponse response) {
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		
		try {
			int categoryId = Integer.parseInt(request.getParameter("categoryId"));
			Categories p = categoriesService.getById(categoryId);
			p.setStatus(Boolean.FALSE);
			categoriesService.saveOrUpdate(p);
			
			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");
			
		} catch (Exception e) {
			jsonResult.put("code", 500);
			jsonResult.put("message", e.getMessage());
		}
		
		return ResponseEntity.ok(jsonResult);
	}
//	@RequestMapping(value = { "/admin-aj" }, method = RequestMethod.POST)
//	public ResponseEntity<Map<String, Object>> contact3(final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response, @RequestBody Admin admin) {
//
//		System.out.println("Admin[name]: " + admin.getName());
//		System.out.println("Admin[type]: " + admin.getType());
//		System.out.println("Admin[branch]: " + admin.getBranch());
//		System.out.println("Admin[price]: " + admin.getPrice());
//
//		Map<String, Object> result = new HashMap<String, Object>();
//		result.put("code", 200);
//		result.put("status", "Done!");
//		return ResponseEntity.ok(result);
//	}

}
