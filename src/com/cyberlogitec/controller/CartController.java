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
	
	@GetMapping(value= {"/cart"})
	public String smartPhone(Model model, Authentication auth) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		List<Product> products = productService.getTopTenProduct();
		List<Product> saleProduct = productService.getTopTenSaleProduct();
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		model.addAttribute("topTenProduct", products);
		model.addAttribute("topTenSaleProduct", saleProduct);
		return "cart";
	}
}
