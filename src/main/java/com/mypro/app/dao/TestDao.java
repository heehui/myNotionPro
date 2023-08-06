package com.mypro.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("TestDao")
public class TestDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HashMap<String, Object>> getBoardList(HashMap<String, Object> param){
		return sqlSession.selectList("AppMapper.getBoardList", param);
	}
	
	public int deleteListOne(int idx) {
		return sqlSession.delete("AppMapper.deleteListOne", idx);
	}
	
	public int createListOne(HashMap<String, Object> param) {
		return sqlSession.insert("AppMapper.createListOne", param);
	}
}
