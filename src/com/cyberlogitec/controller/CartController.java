package com.cyberlogitec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cyberlogitec.model.Category;
import com.cyberlogitec.model.Product;
import com.cyberlogitec.model.User;
import com.cyberlogitec.service.CategoryService;
import com.cyberlogitec.service.ProductCategoryService;
import com.cyberlogitec.service.ProductService;
import com.cyberlogitec.service.UserService;

@Controller
public class CartController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductCategoryService productCategoryService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	 private CategoryService categoryService;
	
	@GetMapping(value= {"/saveCart"})
	public String smartPhone(Model model) {
		return "cart";
	}
}
