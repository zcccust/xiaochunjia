package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.model.Food;
import com.xiaochunjia.data.service.FoodService;
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
@RequestMapping(value = "/food")
public class FoodController {
    @Autowired
    private FoodService foodService;

    @RequestMapping(value = "/top",method= RequestMethod.GET)
    @ResponseBody()
    public List<Food> getTop(HttpSession session) {
        return foodService.findByPage(0,5);
    }
}
