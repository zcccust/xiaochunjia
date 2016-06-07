package com.xiaochunjia.data.common;

import com.xiaochunjia.data.model.Blog;

import java.util.HashMap;

public class SessionUtils {
	private static HashMap<Integer, Integer> accessLevels=new HashMap<Integer, Integer>();	
	
	public static void sessionIn(Integer sessionCode){
		accessLevels.put(sessionCode, Blog.K_Level_Open);
	}
	public static void sessionOut(Integer sessionCode){
		accessLevels.remove(sessionCode);
	}
	public static void setSessionLevel(Integer sessionCode,Integer level){
		accessLevels.put(sessionCode, level);
	}
	
	public static Integer getSessionLevel(Integer sessionCode){
		return accessLevels.get(sessionCode);
	}
}
