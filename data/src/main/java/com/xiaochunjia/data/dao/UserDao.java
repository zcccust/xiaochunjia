package com.xiaochunjia.data.dao;

import com.xiaochunjia.data.model.User;
import org.springframework.stereotype.Component;

@Component
public interface UserDao {
	
	public int countAll();
	
	public User findByLoginName(String loginName);
}
