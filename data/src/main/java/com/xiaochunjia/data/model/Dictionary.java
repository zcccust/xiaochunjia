package com.xiaochunjia.data.model;

import java.util.Date;

/**
 * Created by zhangchengchun on 2016/6/22.
 * 字典管理类
 */
public class Dictionary extends BaseEntity{

    public static Integer k_Type_Cagegory=0;    //栏目

    private String title;               //标题
    private Integer type;               //类型 0：栏目
    private Integer no;                 //排序

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }
}
