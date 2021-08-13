package com.devpro.thirtyoneGK.controller.user;

import java.math.BigDecimal; 
import java.util.HashMap;  
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.thirtyoneGK.dto.Cart;
import com.devpro.thirtyoneGK.dto.CartItem;
import com.devpro.thirtyoneGK.entities.Categories;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.entities.SaleOrder;
import com.devpro.thirtyoneGK.entities.SaleOrder_pro;

import com.devpro.thirtyoneGK.services.ProductService;
import com.devpro.thirtyoneGK.services.SaleOrderService;



@Controller

public class CartController extends BaseController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	SaleOrderService saleOrderService;
	@RequestMapping(value = { "/cart/view" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		
		return "user/cart/view";
	}
	@RequestMapping(value = { "/cart/payment" }, method = RequestMethod.GET)
	public String paymen(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		
		return "user/cart/payment";
	}
	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		// lay doi tuong session
		// session tuong tu nhu la 1 map luu tren ram cua server
		model.addAttribute("product", productService.findAll());
		HttpSession httpSession = request.getSession();
		
		// dinh nghia gio hang
		Cart cart = null;
		
		// kiem tra xem da co gio hang tren session
		if (httpSession.getAttribute("cart") != null) {
			// neu da ton tai gio hang thi lay ra tu session
			cart = (Cart) httpSession.getAttribute("cart");
		} else {
			cart = new Cart(); // khoi tao gio hang neu chua co
			httpSession.setAttribute("cart", cart); // luu gio hang tren session
		}

		// kiem tra item da co trong gio hang chua
		// lay tat ca cac san pham co trong gio hang
		List<CartItem> cartItems = cart.getCartItems();
		
		// bat dau kiem tra xem da ton tai chua
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
			}
		}

		// neu khong ton tai san pham trong gio hang
		if (!isExists) {
			// lay thon tin san pham tu db
			Product productInDb = productService.getById(cartItem.getProductId());
			
			// thiet lap cac gia tri khac cua item
			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice_sale());
			cartItem.setPath(productInDb.getAvatar());
			cartItem.setShort_description(productInDb.getShort_description());
			
			// add san pham vao trong gio hang
			cart.getCartItems().add(cartItem);
		}

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("totalPrice", getTotalPrice(request));

		printInfo(request);
		
		httpSession.setAttribute("totalItems", getTotalItems(request));
		httpSession.setAttribute("totalPrice", getTotalPrice(request));
		return ResponseEntity.ok(jsonResult);
	}

	
	
	
	private void printInfo(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		for (CartItem item : cartItems) {
			System.out.println(item.getProductName() + ":" + item.getQuanlity());
		}
	}
	
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}
	
	private int getTotalPrice(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int totalPrice = 0;
		for (CartItem item : cartItems) {
			totalPrice += item.getQuanlity() * item.getPriceUnit().intValue();
		}

		return totalPrice;
	}
	@RequestMapping(value = { "/cart/payment" }, method = RequestMethod.POST)
	public String addSale_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		int total = getTotalPrice(request);
		String fullName = request.getParameter("fullName");
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCode("ORDER-" + System.currentTimeMillis());
		saleOrder.setSeo("ORDER-" + System.currentTimeMillis());
		saleOrder.setCustomer_email(email);
		saleOrder.setCustomer_name(fullName);
		saleOrder.setCustomer_phone(tel);
		saleOrder.setCustomer_address("Ha Noi");
		saleOrder.setTotal(new BigDecimal(total));;

		for (CartItem item : cartItems) {
			SaleOrder_pro saleOrderProducts = new SaleOrder_pro();
			saleOrderProducts.setProduct(productService.getById(item.getProductId()));
			saleOrderProducts.setQuality(item.getQuanlity());
			saleOrder.addSOPro(saleOrderProducts);
		}

		saleOrderService.saveOrUpdate(saleOrder);
		this.resetCart(request);

		// send a email to customer.
//		emailService.sendEmailWhenPaymentSuccess(email);
		
		return "redirect:/";
	}

	private void resetCart(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		// after finish payment must be clean.
		httpSession.setAttribute("cart", new Cart());
		httpSession.setAttribute("totalItems", 0);
	}
	
	
	
	
	
	
	
}
