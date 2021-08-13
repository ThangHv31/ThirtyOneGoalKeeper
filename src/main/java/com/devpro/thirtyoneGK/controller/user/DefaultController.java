package com.devpro.thirtyoneGK.controller.user;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.thirtyoneGK.dto.ProductSearchModel;
import com.devpro.thirtyoneGK.entities.Categories;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.services.CategoriesService;
import com.devpro.thirtyoneGK.services.ProductService;

@Controller
public class DefaultController {
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "/", "/home", "/index", "/trangchu" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<Product> products = productService.findHot();
		
		model.addAttribute("products", products);
	


		return "user/index";
	}

	@RequestMapping(value = { "/detail" }, method = RequestMethod.GET)
	public String details(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		Product product = productService.getById(Integer.parseInt(request.getParameter("id")));
		model.addAttribute("product", product);
		return "user/detail";
	}
	
	@RequestMapping(value = { "/signIn" }, method = RequestMethod.GET)
	public String sign(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("currentYear", "2021");
		return "user/signIn";
	}
	@RequestMapping(value = { "/category/{categorySeo}" }, method = RequestMethod.GET)
	public String category(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
			, @PathVariable("categorySeo") String categorySeo)
			throws IOException {
		ProductSearchModel sm = new ProductSearchModel();
		sm.setCategorySeo(categorySeo);
		List<Product> products = productService.search(sm);
		
		model.addAttribute("products", products);
		return "user/searchItem";
	}
	@RequestMapping(value = { "/product/{categoryName}" }, method = RequestMethod.GET)
	public String cate(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
			, @PathVariable("categoryName") String categoryName)
			throws IOException {
		
		ProductSearchModel sm = new ProductSearchModel();
		sm.setSearchText(categoryName);
		List<Product> products = productService.search(sm);
		
		model.addAttribute("products", products);
		return "user/searchItem";
	}
	@RequestMapping(value = { "/search" }, method = RequestMethod.GET)
	public String search(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String searchText = request.getParameter("searchText");

		ProductSearchModel sm = new ProductSearchModel();
		sm.setSearchText(searchText);
		List<Product> products = productService.search(sm);

		model.addAttribute("products", products);
		return "user/searchItem";
	}
	@RequestMapping(value = { "/searchAd" }, method = RequestMethod.GET)
	public String searchAd(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String searchText = request.getParameter("searchAdmin");

		ProductSearchModel sm = new ProductSearchModel();
		sm.setSearchText(searchText);
		List<Product> products = productService.search(sm);

		model.addAttribute("products", products);
		return "admin/list-product";
	}
}
