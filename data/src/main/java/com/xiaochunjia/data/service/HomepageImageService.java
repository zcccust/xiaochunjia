package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.HomepageImageDao;
import com.xiaochunjia.data.model.HomepageImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class HomepageImageService {

	@Autowired
	private HomepageImageDao imageDao;
	
	public List<HomepageImage> getAll(){
		return imageDao.getAll();
	}
	
	public Integer add(HomepageImage image){
		return imageDao.add(image);
	}
}
