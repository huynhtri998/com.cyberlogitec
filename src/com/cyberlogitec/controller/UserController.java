package com.cyberlogitec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cyberlogitec.model.Category;
import com.cyberlogitec.model.User;
import com.cyberlogitec.model.UserForm;
import com.cyberlogitec.service.CategoryService;
import com.cyberlogitec.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	 private UserService userService;
	
	@Autowired
	 private CategoryService categoryService;
	@GetMapping(value= {"/login"})
	public String login(Model model) {
		return "login";
	}
	
	@GetMapping(value= {"/","/userinformation"})
	public String userInformation(Model model, Authentication auth) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		return "userinformation";
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
		User user = new User(name, userName, password, phone, email, imgURL);
		userService.addUser(user);
		return "redirect:/login";
	}
	
	@PostMapping("/updateUser")
	public String updateUser(Model model, @ModelAttribute("user") User user, Authentication auth) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		user.setUserName(username);
		userService.updateUser(user);
		return "redirect:/userinformation";
	}
}
