package com.cyberlogitec.service;

import java.util.List;

import com.cyberlogitec.model.ProductCategory;

public interface ProductCategoryService {
	List<ProductCategory> getProductByCategoryId(Integer categoryId);
}
