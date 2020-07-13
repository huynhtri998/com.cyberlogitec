package com.cyberlogitec.service;

import java.util.List;
import java.util.Map;

import com.cyberlogitec.model.ProductCategory;

public interface ProductCategoryService {
	List<ProductCategory> getProductByCategoryId(Map<String, Object> map);
	 int countProduct(int id);
}
