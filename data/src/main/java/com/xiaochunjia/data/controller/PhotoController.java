package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.model.Photo;
import com.xiaochunjia.data.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zhangchengchun on 2016/6/22.
 * 摄影作品请求处理类
 */
@Controller
@RequestMapping(value = "/photo")
public class PhotoController {
    @Autowired
    private PhotoService photoService;

    @RequestMapping(value = "/all",method= RequestMethod.GET)
    @ResponseBody()
    public List<Photo> getBlog(HttpSession session) {
        return photoService.findByPage(1,15);
    }
}
