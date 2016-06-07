package com.xiaochunjia.data.model;

public class BaseEntity {
	private Long id;
	
	public BaseEntity() {
		super();
	}

	public BaseEntity(Long id) {
		super();
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
