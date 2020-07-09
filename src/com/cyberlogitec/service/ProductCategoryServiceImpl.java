package com.cyberlogitec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.ProductCategoryDao;
import com.cyberlogitec.model.ProductCategory;

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService{

	@Autowired
	private ProductCategoryDao productCategoryDao;
	
	@Override
	public List<ProductCategory> getProductByCategoryId(Integer categoryId) {
		return productCategoryDao.getProductByCategoryId(categoryId);
	}

}
