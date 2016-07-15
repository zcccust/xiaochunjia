package com.xiaochunjia.data.view;

import com.xiaochunjia.data.model.Blog;

import java.util.Date;

/**
 * Created by zhangchengchun on 2016/7/15.
 */
public class BlogView {

    public BlogView(Blog blog){
        this.id = blog.getId();
        this.category = blog.getCategory();
        this.title = blog.getTitle();
        this.date = blog.getDate();
        this.content = blog.getContent();
        this.tags = blog.getTags();
        this.mark = blog.getMark();
        this.comment = blog.getComment();
        if(category==0){

        }
    }

    private Long id;             //id
    private Integer category;	    //栏目
    private Integer categoryDesc;	//栏目
    private String title;		    //标题
    private Date date;			    //创建时间
    private String content;		    //内容
    private String tags;		    //标签
    private Integer mark;		    //赞数
    private Integer comment;	    //评论数

    public Long getId() {return id;}
    public Integer getCategoryDesc() {return categoryDesc;}
    public Integer getCategory() { return category;	}
    public String getTitle() {
        return title;
    }
    public Date getDate() {
        return date;
    }
    public String getContent() {
        return content;
    }
    public String getTags() {
        return tags;
    }
    public Integer getMark() {
        return mark;
    }
    public Integer getComment() {
        return comment;
    }
}
