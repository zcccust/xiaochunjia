package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.BlogDao;
import com.xiaochunjia.data.model.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BlogService extends BaseService<BlogDao,Blog>{

}
