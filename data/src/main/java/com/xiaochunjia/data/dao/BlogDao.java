package com.xiaochunjia.data.dao;

import com.xiaochunjia.data.model.Blog;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface BlogDao {
	public List<Blog> findByPage(int record, int pageSize);

	public Integer addBlog(Blog blog);

	public Blog find(Integer id);
}

