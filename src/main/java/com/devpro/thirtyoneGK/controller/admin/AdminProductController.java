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
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.services.CategoriesService;
import com.devpro.thirtyoneGK.services.ProductService;



@Controller
public class AdminProductController {
	@Autowired
	ProductService productService;
	@Autowired
	private CategoriesService categoriesService;


	///// add
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.POST)
	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("product") Product product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("product_img") MultipartFile[] productImages)

			throws Exception {
		if (product.getId() != null && product.getId() > 0) {
			productService.edit(product, productAvatar, productImages);

		} else {
			productService.save(product, productAvatar, productImages);
		}

		return "redirect:/admin/list-product";
	}
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.GET)
	public String addProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("product", new Product());
		return "admin/add-product";
	}
	// lisst
	@RequestMapping(value = { "/admin/list-product" }, method = RequestMethod.GET)
	public String listProducts(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("products", productService.findAll());
		return "admin/list-product";
	}
	




	//// edit
	@RequestMapping(value = { "/admin/edit-product" }, method = RequestMethod.GET)
	public String editProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int productId = Integer.parseInt(request.getParameter("id"));
		Product product = productService.getById(productId);

		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("product", product);
		return "admin/add-product";
	}
	@RequestMapping(value = { "/admin/delete-product" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct_Ajax(final ModelMap model
			, final HttpServletRequest request,
			final HttpServletResponse response) {
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		
		try {
			int productId = Integer.parseInt(request.getParameter("productId"));
			Product p = productService.getById(productId);
			p.setStatus(Boolean.FALSE);
			productService.saveOrUpdate(p);
			
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
