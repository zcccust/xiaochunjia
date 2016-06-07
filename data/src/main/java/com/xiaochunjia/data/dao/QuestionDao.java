package com.xiaochunjia.data.dao;

import com.xiaochunjia.data.model.Question;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface QuestionDao {
	public List<Question> getAll();

	public Question get(Long id);
}
