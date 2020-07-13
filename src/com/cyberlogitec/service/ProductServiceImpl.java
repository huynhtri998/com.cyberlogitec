package com.cyberlogitec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.ProductDao;
import com.cyberlogitec.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> getTopTenProduct() {
		return productDao.getTopTenProduct();
	}

	@Override
	public List<Product> getTopTenSaleProduct() {
		return productDao.getTopTenSaleProduct();
	}

	@Override
	public Product getProductById(Integer productId) {
		return productDao.getProductById(productId);
	}

	

}
