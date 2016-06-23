package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.model.HomepageImage;
import com.xiaochunjia.data.service.HomepageImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zhangchengchun on 2016/6/22.
 * 首页图片请求处理类
 */
@Controller
@RequestMapping(value = "/himage")
public class HomepageImageController {
    @Autowired
    private HomepageImageService homepageImageService;

    @RequestMapping(value = "/all",method= RequestMethod.GET)
    @ResponseBody()
    public List<HomepageImage> getBlog(HttpSession session) {
        return homepageImageService.findAll();
    }
}
