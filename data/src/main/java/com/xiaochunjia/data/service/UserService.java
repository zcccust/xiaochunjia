package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.UserDao;
import com.xiaochunjia.data.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public int getUserCount(){
		return userDao.countAll();
	}
	
	public User findByLoginName(String loginName){
		return userDao.findByLoginName(loginName);
	}
}
