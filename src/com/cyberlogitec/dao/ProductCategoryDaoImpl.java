package com.cyberlogitec.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.ProductCategory;

@Repository
public class ProductCategoryDaoImpl implements ProductCategoryDao {

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<ProductCategory> getProductByCategoryId(Integer categoryId) {
		return sqlsession.selectList("CategoryMapper.getProductByCategoryId", categoryId);
	}

}
