package com.cyberlogitec.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cyberlogitec.model.Category;

@Service
public interface CategoryService {
	List<Category> getAll();
}
