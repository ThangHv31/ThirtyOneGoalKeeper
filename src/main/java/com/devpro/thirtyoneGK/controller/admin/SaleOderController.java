package com.devpro.thirtyoneGK.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.thirtyoneGK.controller.user.BaseController;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.entities.SaleOrder;
import com.devpro.thirtyoneGK.services.CategoriesService;
import com.devpro.thirtyoneGK.services.ProductService;
import com.devpro.thirtyoneGK.services.SaleOrderService;

@Controller
public class SaleOderController extends BaseController {

	@Autowired
	ProductService productService;
	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private SaleOrderService saleOrderService;

	@RequestMapping(value = { "/admin/list-saleorder" }, method = RequestMethod.GET)
	public String listSale(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("saleOrder", saleOrderService.findAll());
		return "admin/list-saleorder";
	}

	@RequestMapping(value = { "/admin/complete-saleorder" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deletesaleoder(final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {

		Map<String, Object> jsonResult = new HashMap<String, Object>();

		try {
			int saleOrderId = Integer.parseInt(request.getParameter("saleorderId"));
			SaleOrder p = saleOrderService.getById(saleOrderId);
			p.setStatus(Boolean.FALSE);
			saleOrderService.saveOrUpdate(p);

			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");

		} catch (Exception e) {
			jsonResult.put("code", 500);
			jsonResult.put("message", e.getMessage());
		}

		return ResponseEntity.ok(jsonResult);
	}
}