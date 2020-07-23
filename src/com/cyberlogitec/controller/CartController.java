package com.cyberlogitec.controller;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.cyberlogitec.model.CartItem;
import com.cyberlogitec.model.ShoppingCart;
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

	@PostMapping(value = { "/saveCart" })
	public String smartPhone(Model model, @RequestBody ShoppingCart shoppingCart) {
		System.out.println("request " + shoppingCart.getProduct());
		
		JSONObject jsonObject = new JSONObject(shoppingCart.getProduct());
		
		System.out.println("json object " + jsonObject);
		
		String jsontotalString = (String) jsonObject.get("total");
		System.out.println("json object " + jsontotalString);
		String jsonuserString = (String) jsonObject.get("idUser");
		System.out.println("json object " + jsonuserString);
		System.out.println("abc " + jsonObject.getJSONArray("cartItems"));
		
		JSONArray listItem = jsonObject.getJSONArray("cartItems");
		
		System.out.println("list item " + listItem);
		
		for (Object cartItem : listItem) {
			cartItem.getClass();
			System.out.println("object " + cartItem);
		}
		//jsonObject.getJSONObject("cartItems");
		
		
		// Could not resolve parameter [1] in public java.lang.String
		// com.cyberlogitec.controller.CartController.smartPhone(org.springframework.ui.Model,com.cyberlogitec.model.ShoppingCart):
		// JSON parse error: Unrecognized token 'total': was expecting (JSON String,
		// Number, Array, Object or token 'null', 'true' or 'false'); nested exception
		// is com.fasterxml.jackson.core.JsonParseException: Unrecognized token 'total':
		// was expecting (JSON String, Number, Array, Object or token 'null', 'true' or
		// 'false')
		System.out.println("Get");
		return "cart";
	}
}
