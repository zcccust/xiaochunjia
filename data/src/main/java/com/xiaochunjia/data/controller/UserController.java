package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.common.SessionUtils;
import com.xiaochunjia.data.model.Blog;
import com.xiaochunjia.data.model.Question;
import com.xiaochunjia.data.model.User;
import com.xiaochunjia.data.service.BlogService;
import com.xiaochunjia.data.service.QuestionService;
import com.xiaochunjia.data.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private BlogService blogService;
	
	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/verify",method=RequestMethod.POST)
	@ResponseBody
	public CheckResult verify( HttpSession session,String question, String answer) {
		Long id = Long.parseLong(question);
		Question quesion = questionService.get(id);
		if(quesion.getAnswer().equals(answer.trim())){
			SessionUtils.setSessionLevel(session.hashCode(), Blog.K_Level_Verify);
			return new CheckResult(true,"");
		}
		else{
			return new CheckResult(false,"答案不正确");
		}
	}
	
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	@ResponseBody
	public CheckResult login(HttpSession session,String pwd) {
		
		User user = userService.findByLoginName("zcccust");
		if(user!=null&&user.getPwd().equals(pwd.trim())){
			SessionUtils.setSessionLevel(session.hashCode(), Blog.K_Level_Secret);
			return new CheckResult(true,"");
		}
		else{
			return new CheckResult(false,"密码不正确");
		}
	}
	
	@RequestMapping(value = "/questions",method=RequestMethod.GET)
	@ResponseBody
	public List<Question> getQuestions() {	
		List<Question> questions = questionService.getAll();
		for(Question question:questions){
			question.setAnswer("");
		}
		return questions;
	}
	class CheckResult{
		public Boolean result;
		public String message;
		public CheckResult(Boolean result,String message){
			this.result = result;
			this.message = message;
		}
	}
}
