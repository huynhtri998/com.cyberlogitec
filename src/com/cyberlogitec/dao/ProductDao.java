package com.cyberlogitec.dao;

import java.util.List;

import com.cyberlogitec.model.Product;

public interface ProductDao {
	List<Product> getTopTenProduct();
	List<Product> getTopTenSaleProduct();
	Product getProductById(Integer productId);
}
