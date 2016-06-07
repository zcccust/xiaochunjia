package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.BlogDao;
import com.xiaochunjia.data.model.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BlogService {

	@Autowired
	private BlogDao blogDao;
	
	public List<Blog> findByPage(int page,int pageSize){
		
		if(page==0)page=1;
		
		int record =(page-1)*pageSize;
		
		return blogDao.findByPage(record, pageSize);
	}

	public Integer addBlog(Blog blog){
		return blogDao.addBlog(blog);
	}

	public Blog find(Integer id) {
		return blogDao.find(id);
	}
}
