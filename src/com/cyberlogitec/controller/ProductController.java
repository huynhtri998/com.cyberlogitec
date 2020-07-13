package com.cyberlogitec.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	private Map<String, Object> map = new HashMap<String, Object>();
	@GetMapping(value= {"/smartphone"})
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
		return "smartphone";
	}
	
	@GetMapping(value= {"/smartphonecatalog/{categoryId}/{pageId}"})
	public String smartPhoneCatalog(Model model, Authentication auth, @PathVariable String categoryId, @PathVariable String pageId) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		if (pageId == null || Integer.parseInt(pageId) == 0) {
			pageId = "1";
		}
		
		map.put("id", Integer.parseInt(categoryId));
		map.put("page", (Integer.parseInt(pageId) - 1) * 8);
		int idInt = Integer.parseInt(categoryId);
		int pageInt = Integer.parseInt(pageId);
		List<ProductCategory> productPage = productCategoryService.getProductByCategoryId(map);
		int totalProducts = productCategoryService.countProduct(idInt);
		List<String> pageList = new ArrayList<String>();
		int from;
		int to;
		int lastPage = (int) Math.ceil((double) totalProducts / 8);
		if (pageInt < 3) {
			from = 1;
			to = 3;
		} else {
			if (pageInt == lastPage) {
				from = pageInt - 2;
				to = pageInt;
			} else {
				from = pageInt - 1;
				to = pageInt + 1;
			}
		}

		for (int i = from; i <= to; i++) {
			pageList.add(String.valueOf(i));
		}
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		User user = userService.getUserByUserName(username);
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		model.addAttribute("listProductByCategoryId", productPage);
		model.addAttribute("pages", pageList);
		model.addAttribute("thisPage", pageId);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("categoryId", categoryId);
		return "smartphonecatalog";
	}
	
	@GetMapping(value= {"/smartphonedetail/{productId}"})
	public String smartPhoneDetail(Model model, Authentication auth, @PathVariable String productId) {
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String username = userDetails.getUsername();
		List<Category> categories = categoryService.getAll();
		User user = userService.getUserByUserName(username);
		Product product = productService.getProductById(Integer.parseInt(productId));
		model.addAttribute("userProfile",user);
		model.addAttribute("categories",categories);
		model.addAttribute("product",product);
		return "smartphonedetail";
	}
}
