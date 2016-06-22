package com.xiaochunjia.data.model;

/**
 * 首页图片管理类
 */
public class HomepageImage extends BaseEntity{
	
	private Integer sort;  //排序
	private String url;		//图片url
	private String title;	//显示的标题
	private String description;	//显示的描述文字

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
}
