package com.cyberlogitec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyberlogitec.dao.CategoryDao;
import com.cyberlogitec.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	@Override
	public List<Category> getAll() {
		return categoryDao.getAll();
	}

}
