package com.cyberlogitec.service;

import java.util.List;

import com.cyberlogitec.model.Product;

public interface ProductService {
	List<Product> getTopTenProduct();
	List<Product> getTopTenSaleProduct();
	Product getProductById(Integer productId);
}
