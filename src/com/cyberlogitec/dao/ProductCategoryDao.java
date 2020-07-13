package com.cyberlogitec.dao;

import java.util.List;
import java.util.Map;

import com.cyberlogitec.model.ProductCategory;

public interface ProductCategoryDao {
	List<ProductCategory> getProductByCategoryId(Map<String, Object> map);
	 int countProduct(int id);
}
