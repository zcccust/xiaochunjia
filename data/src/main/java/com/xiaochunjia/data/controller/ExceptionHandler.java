package com.xiaochunjia.data.controller;


import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExceptionHandler implements HandlerExceptionResolver {
	public static final Logger logger =  Logger.getLogger(ExceptionHandler.class);
	public ModelAndView resolveException(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3) {
		System.out.println("error url:"+arg0.getRequestURI());
		System.out.println(arg3);
		return new ModelAndView("/error/500"); 
	} 
}

