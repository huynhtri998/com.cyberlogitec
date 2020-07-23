package com.cyberlogitec.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.cyberlogitec.model.Cart;
import com.cyberlogitec.model.CartItem;
import com.cyberlogitec.model.ShoppingCart;
import com.cyberlogitec.service.CartItemService;
import com.cyberlogitec.service.CartService;
import com.cyberlogitec.service.CategoryService;
import com.cyberlogitec.service.ProductCategoryService;
import com.cyberlogitec.service.ProductService;
import com.cyberlogitec.service.UserService;
import com.google.gson.Gson;

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
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private CartItemService cartItemService;
	
	@PostMapping(value = { "/saveCart" })
	public String smartPhone(Model model, @RequestBody ShoppingCart shoppingCart, Authentication auth) {	
		JSONObject jsonObject = new JSONObject(shoppingCart.getProduct());	
		Float jsontotalString = Float.parseFloat((String) jsonObject.get("total")) ;
		Integer jsonuserString = Integer.parseInt((String) jsonObject.get("idUser")) ;	
		String listItem = jsonObject.getJSONArray("cartItems").toString();	
		Gson gson = new Gson(); 
		CartItem[] cartItems = gson.fromJson(listItem, CartItem[].class); 
		Cart cart = new Cart(jsontotalString,jsonuserString);
		//jsonObject.getJSONObject("cartItems");
		cartService.addCart(cart);
		Integer idCart = cartService.getLastKey();
		// Could not resolve parameter [1] in public java.lang.String
		// com.cyberlogitec.controller.CartController.smartPhone(org.springframework.ui.Model,com.cyberlogitec.model.ShoppingCart):
		// JSON parse error: Unrecognized token 'total': was expecting (JSON String,
		// Number, Array, Object or token 'null', 'true' or 'false'); nested exception
		// is com.fasterxml.jackson.core.JsonParseException: Unrecognized token 'total':
		// was expecting (JSON String, Number, Array, Object or token 'null', 'true' or
		// 'false')
		for (CartItem cartItem : cartItems) {
			cartItem.setIdCart(idCart);
			cartItemService.addCartItem(cartItem);
		}
		return "redirect:/smartphone";
	}
}
