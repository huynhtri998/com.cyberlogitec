package com.cyberlogitec.dao;

import java.util.List;

import com.cyberlogitec.model.ProductCategory;

public interface ProductCategoryDao {
	List<ProductCategory> getProductByCategoryId(Integer categoryId);
}
