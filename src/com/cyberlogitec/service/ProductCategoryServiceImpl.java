package com.cyberlogitec.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.ProductCategoryDao;
import com.cyberlogitec.model.ProductCategory;

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService{

	@Autowired
	private ProductCategoryDao productCategoryDao;

	@Override
	public List<ProductCategory> getProductByCategoryId(Map<String, Object> map) {
		return productCategoryDao.getProductByCategoryId(map);
	}

	@Override
	public int countProduct(int id) {
		// TODO Auto-generated method stub
		return productCategoryDao.countProduct(id);
	}
	
	

}
