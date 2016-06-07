package com.xiaochunjia.data.common;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringHelper implements ApplicationContextAware{
	private static ApplicationContext context;

	public void setApplicationContext(ApplicationContext arg0)
			throws BeansException {
		SpringHelper.context = arg0;
	}

	public static ApplicationContext getContext() {
		return context;
	}
	
	public static <T> T getBean(String name){
		return (T)context.getBean(name);
	}
}
