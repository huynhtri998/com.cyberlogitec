package com.cyberlogitec.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cyberlogitec.model.User;
import com.cyberlogitec.model.UserForm;
import com.cyberlogitec.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@GetMapping(value= {"/login"})
	public String login(Model model) {
		return "login";
	}
	
	
	@GetMapping(value= {"/","/profile"})
	public String viewProfile(Model model, Authentication auth) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		return "profile";
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("userForm", new UserForm());
		return "register";
	}
	
	@PostMapping("/registerUser")
	public String registerUser(Model model, @ModelAttribute("userForm") UserForm userForm) {
		String userName = userForm.getUserName();
		String password = userForm.getPassword();
		String confirmedPassword = userForm.getConfirmPassword();
		String name = userForm.getName();
		String email = userForm.getEmail();
		String phone = userForm.getPhone();
		String imgURL = userForm.getImageURL();
		if(!password.equals(confirmedPassword)) {
			model.addAttribute("errorMesage", "Confirmed password is not matched!");
			return "register";
		}
		if(userService.getUserByUserName(userName) != null) {
			model.addAttribute("errorMessage","Username is existed!");
			return "register";
		}
		String role = "USER";
		User user = new User(name, userName, password, phone, email, imgURL, role);
		userService.addUser(user);
		return "redirect:/login";
	}
}
