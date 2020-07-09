package com.cyberlogitec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cyberlogitec.model.Category;
import com.cyberlogitec.model.Product;
import com.cyberlogitec.model.ProductCategory;
import com.cyberlogitec.model.User;
import com.cyberlogitec.service.CategoryService;
import com.cyberlogitec.service.ProductCategoryService;
import com.cyberlogitec.service.ProductService;
import com.cyberlogitec.service.UserService;

@Controller
public class ProductController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductCategoryService productCategoryService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	 private CategoryService categoryService;
	@GetMapping(value= {"/smartphone"})
	public String smartPhone(Model model, Authentication auth) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		return "smartphone";
	}
	
	@GetMapping(value= {"/smartphonecatalog/{categoryId}"})
	public String smartPhoneCatalog(Model model, Authentication auth, @PathVariable String categoryId) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		List<ProductCategory> listProductByCategoryId = productCategoryService.getProductByCategoryId(Integer.parseInt(categoryId));
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		model.addAttribute("listProductByCategoryId",listProductByCategoryId);
		return "smartphonecatalog";
	}
	
	@GetMapping(value= {"/smartphonedetail"})
	public String smartPhoneDetail(Model model, Authentication auth) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		return "smartphonedetail";
	}
}
