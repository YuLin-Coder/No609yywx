package com.model;

/**
 * TPinglun1 entity. @author MyEclipse Persistence Tools
 */

public class TPinglun implements java.io.Serializable
{

	// Fields

	private Integer id;
	private String neirong;
	private String shijian;
	private Integer gequId;
	
	private Integer userId;

	private TUser user;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNeirong() {
		return neirong;
	}

	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}

	public Integer getGequId() {
		return gequId;
	}

	public void setGequId(Integer gequId) {
		this.gequId = gequId;
	}

	public String getShijian() {
		return shijian;
	}

	public void setShijian(String shijian) {
		this.shijian = shijian;
	}


	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public TUser getUser() {
		return user;
	}

	public void setUser(TUser user) {
		this.user = user;
	}
	
}