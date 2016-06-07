package com.xiaohunjia.data.test;

import com.xiaochunjia.data.model.Blog;
import com.xiaochunjia.data.service.BlogService;
import com.xiaochunjia.data.service.UserService;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class WebTest extends TestCase {
	
	@Autowired
	private UserService userService;
	@Autowired
	private BlogService blogService;
	
	@Test
	public void testInit(){
		System.out.println("test init!");
		
		System.out.println("user count： "+userService.getUserCount());
	}
	
	@Test
	public void testFindBlogs(){
		
		List<Blog> blogs = blogService.findByPage(1, 5);
		
		System.out.println("page 1 blogs :");
		for(Blog blog:blogs){
			System.out.print(blog.getId()+",");
		}
		System.out.println("");
		blogs = blogService.findByPage(2, 5);
		System.out.println("page 2 blogs :");
		for(Blog blog:blogs){
			System.out.print(blog.getId()+",");
		}
		System.out.println("");
		blogs = blogService.findByPage(3, 5);
		System.out.println("page 3 blogs :");
		for(Blog blog:blogs){
			System.out.print(blog.getId()+",");
		}
		System.out.println("");
	}
			
}
