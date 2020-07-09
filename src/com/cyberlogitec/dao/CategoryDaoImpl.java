package com.cyberlogitec.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cyberlogitec.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao{
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<Category> getAll() {
		return sqlsession.selectList("CategoryMapper.getAll");
	}

}
