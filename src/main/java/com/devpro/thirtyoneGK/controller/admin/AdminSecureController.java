package com.devpro.thirtyoneGK.controller.admin;

import java.io.IOException; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.entities.User;
import com.devpro.thirtyoneGK.services.UserService;

@Controller
public class AdminSecureController {

	@Autowired
	UserService userService;
//	UserRepo userRepo;

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "user/signIn";
	}

	@RequestMapping(value = { "/user/signIn" }, method = RequestMethod.GET)
	public String register(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "user/signIn";
	}

	@RequestMapping(value = { "/user/signIn" }, method = RequestMethod.POST)
	public String addUser(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
	
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);
		user.setPassword(encoder.encode(password));
		userService.saveOrUpdate(user);
		
		return "redirect:/user/signIn";
	}

}
