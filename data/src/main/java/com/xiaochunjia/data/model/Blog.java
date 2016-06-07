package com.xiaochunjia.data.model;

import java.util.Date;

public class Blog extends BaseEntity{
	
	public static Integer K_Status_Online = 1;		//上线
	public static Integer K_Status_Offline = 0;		//下线
	
	public static Integer K_Type_Word = 0;			//文字
	public static Integer K_Type_Pic = 1;			//图片
	public static Integer K_Type_WordAndPic = 2;	//图文混合
	
	public static Integer K_Level_Open = 0;			//完全公开
	public static Integer K_Level_Verify = 1;		//验证访问
	public static Integer K_Level_Secret = 2;		//完全保密
	
	private String title;		//标题
	private Date date;			//创建时间
	private String content;		//内容
	private Integer status;		//状态  1：上线  0：下线
	private Integer type;		//类型   0：文字  1：图片 2图文混合
	private String dspText;		//文字摘要，一段简介
	private String dspImage;	//图片摘要，1到n个图片
	private Integer level;		//安全等级   0：完全公开   1：验证访问
	private String tags;		//标签
	private Integer mark;		//赞数
	private Integer comment;	//评论数

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getDspText() {
		return dspText;
	}
	public void setDspText(String dspText) {
		this.dspText = dspText;
	}
	public String getDspImage() {
		return dspImage;
	}
	public void setDspImage(String dspImage) {
		this.dspImage = dspImage;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public Integer getMark() {
		return mark;
	}
	public void setMark(Integer mark) {
		this.mark = mark;
	}
	public Integer getComment() {
		return comment;
	}
	public void setComment(Integer comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Blog{" +
				"title='" + title + '\'' +
				", date=" + date +
				", content='" + content + '\'' +
				", status=" + status +
				", type=" + type +
				", dspText='" + dspText + '\'' +
				", dspImage='" + dspImage + '\'' +
				", level=" + level +
				", tags='" + tags + '\'' +
				", mark=" + mark +
				", comment=" + comment +
				'}';
	}
}
