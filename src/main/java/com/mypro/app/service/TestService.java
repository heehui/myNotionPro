package com.mypro.app.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mypro.app.dao.TestDao;

@Service
public class TestService {
	
	@Autowired
	private TestDao dao;
	
	public List<HashMap<String, Object>> getBoardList(HashMap<String, Object> param){
		return dao.getBoardList(param);
	}
	
	public int deleteListOne(int idx) {
		return dao.deleteListOne(idx);
	}
	
	public int createListOne(HashMap<String, Object> param) {
		
		return dao.createListOne(param);
	}
}
