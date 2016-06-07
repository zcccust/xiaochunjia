package com.xiaochunjia.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/error")
public class ErrorController {
	@RequestMapping(value = "/{code}",method=RequestMethod.GET)
	public ModelAndView getBlog(@PathVariable String code) {
		System.out.println("error code:"+code);
		return new ModelAndView("/error/"+code); 
	}	
}
