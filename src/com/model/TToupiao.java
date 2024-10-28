package com.model;

/**
 * TToupiao entity. @author MyEclipse Persistence Tools
 */

public class TToupiao implements java.io.Serializable
{

	// Fields

	private Integer id;
	private Integer geshouId;
	private Integer userId;
	private String shijian;

	// Constructors

	/** default constructor */
	public TToupiao()
	{
	}

	/** full constructor */
	public TToupiao(Integer geshouId, Integer userId, String shijian)
	{
		this.geshouId = geshouId;
		this.userId = userId;
		this.shijian = shijian;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public Integer getGeshouId()
	{
		return this.geshouId;
	}

	public void setGeshouId(Integer geshouId)
	{
		this.geshouId = geshouId;
	}

	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	public String getShijian()
	{
		return this.shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

}