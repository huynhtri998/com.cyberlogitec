package com.cyberlogitec.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<Product> getTopTenProduct() {
		return sqlsession.selectList("ProductMapper.getTopTenProduct");
	}

	

}
