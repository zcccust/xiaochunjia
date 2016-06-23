package com.xiaochunjia.data.model;

import java.util.Date;

/**
 * 摄影作品管理类
 */
public class Photo extends BaseEntity{
	
	private Integer sort;  		//排序
	private String thumbnail;	//缩略图url
	private String url;			//图片url
	private String title;		//显示的标题
	private String description;	//显示的描述文字
	private Date publishDate;           //发布日期

	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
}
