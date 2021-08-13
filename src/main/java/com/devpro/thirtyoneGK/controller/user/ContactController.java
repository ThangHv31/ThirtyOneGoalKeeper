package com.devpro.thirtyoneGK.controller.user;

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

import com.devpro.thirtyoneGK.entities.Contact;
import com.devpro.thirtyoneGK.dto.Subcribe;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.entities.User;
import com.devpro.thirtyoneGK.services.ContactService;

 


@Controller
public class ContactController {
	@Autowired
	ContactService contactService;
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("contact", new Contact());
		return "user/contact";
	}

//	@RequestMapping(value = { "/contact-normal" }, method = RequestMethod.POST)
//	public String contactNormal(final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response) throws IOException {
//		Contact contact = new Contact();
//		String firstName = request.getParameter("firstName");
//		System.out.println("Tên : " + firstName);
//		String lastName = request.getParameter("lastName");
//		System.out.println("Họ : " + lastName);
//		String mail = request.getParameter("mail");
//		System.out.println("Email : " + mail);
//		String phone = request.getParameter("phone");
//		System.out.println("Số điện thoại : " + phone);
//		String feedBack = request.getParameter("feedBack");
//		System.out.println("Phản hồi : " + feedBack);
//		return "user/contact";
//	}

	@RequestMapping(value = { "/contact-spring-form" }, method = RequestMethod.POST)
	public String contactSpringForm(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("contact") Contact contact) throws IOException {
		contactService.saveOrUpdate(contact);
		return "user/contact";
	}
	
	
	@RequestMapping(value = { "/contact-sub" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contact3(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody Subcribe subcribe) {

		System.out.println("Subcribe[emailSub]: " + subcribe.getEmailSub());
		

		Map<String, Object> result = new HashMap<String, Object>();
		result.put("code", 200);
		result.put("status", "TC");
		return ResponseEntity.ok(result);
	}
	@RequestMapping(value = { "/admin/list-contact" }, method = RequestMethod.GET)
	public String lis(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("contacts", contactService.findAll());
		return "admin/admin_home";
	}
}
