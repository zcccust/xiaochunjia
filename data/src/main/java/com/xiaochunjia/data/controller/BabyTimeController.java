package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.model.BabyTime;
import com.xiaochunjia.data.service.BabyTimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zhangchengchun on 2016/6/22.
 */
@Controller
@RequestMapping(value = "/baby")
public class BabyTimeController {
    @Autowired
    private BabyTimeService babyTimeService;

    @RequestMapping(value = "/top",method= RequestMethod.GET)
    @ResponseBody()
    public List<BabyTime> getTop(HttpSession session) {
        return babyTimeService.findByPage(0,5);
    }
}
