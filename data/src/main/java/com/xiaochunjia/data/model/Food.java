package com.xiaochunjia.data.model;

import java.util.Date;

/**
 * Created by zhangchengchun on 2016/6/22.
 * 亲子游戏管理类
 */
public class Food extends BaseEntity{
    private String title;               //标题
    private String imageUrl;            //代表图片
    private String description;         //简短描述
    private String content;             //具体内容
    private Date publishDate;           //发布日期

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }
}
