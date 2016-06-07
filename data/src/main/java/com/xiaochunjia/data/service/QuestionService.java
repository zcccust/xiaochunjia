package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.QuestionDao;
import com.xiaochunjia.data.model.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class QuestionService {

	@Autowired
	private QuestionDao questionDao;
	
	public List<Question> getAll(){
		return questionDao.getAll();
	}
	
	public Question get(Long id){
		return questionDao.get(id);
	}
}
