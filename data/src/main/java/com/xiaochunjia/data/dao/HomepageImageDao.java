package com.xiaochunjia.data.dao;

import com.xiaochunjia.data.model.HomepageImage;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface HomepageImageDao {

	public List<HomepageImage> getAll();

	public Integer add(HomepageImage image);
}