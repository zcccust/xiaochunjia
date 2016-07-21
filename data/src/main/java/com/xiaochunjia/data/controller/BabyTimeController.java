package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.model.Dictionary;
import com.xiaochunjia.data.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zhangchengchun on 2016/6/22.
 * 亲子请求处理类
 */
@Controller
@RequestMapping(value = "/baby")
public class BabyTimeController {
    @Autowired
    private DictionaryService babyTimeService;

    @RequestMapping(value = "/top",method= RequestMethod.GET)
    @ResponseBody()
    public List<Dictionary> getTop(HttpSession session) {
        return babyTimeService.findByPage(0,5);
    }
}
