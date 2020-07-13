package com.cyberlogitec.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.ProductCategory;

@Repository
public class ProductCategoryDaoImpl implements ProductCategoryDao {

	@Autowired
	private SqlSession sqlsession;
	@Override
	public List<ProductCategory> getProductByCategoryId(Map<String, Object> map) {
		return sqlsession.selectList("CategoryMapper.getProductByCategoryId", map);
	}
	@Override
	public int countProduct(int id) {
		return sqlsession.selectOne("CategoryMapper.countProductBycategoryId", id);
	}

}
