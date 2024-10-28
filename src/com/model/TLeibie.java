package com.model;

/**
 * TLeibie entity. @author MyEclipse Persistence Tools
 */

public class TLeibie implements java.io.Serializable
{

	// Fields

	private Integer id;
	private String mingcheng;
	private String del;

	// Constructors

	/** default constructor */
	public TLeibie()
	{
	}

	/** full constructor */
	public TLeibie(String mingcheng, String del)
	{
		this.mingcheng = mingcheng;
		this.del = del;
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

	public String getMingcheng()
	{
		return this.mingcheng;
	}

	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}

	public String getDel()
	{
		return this.del;
	}

	public void setDel(String del)
	{
		this.del = del;
	}

}