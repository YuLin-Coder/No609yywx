package com.model;

/**
 * TGeshou entity. @author MyEclipse Persistence Tools
 */

public class TGeshou implements java.io.Serializable
{

	// Fields

	private Integer id;
	private String xingming;
	private String xingbie;
	private String chusheng;
	
	private String jianjie;
	private String fujian;
	private String del;
	
	private String piaoshu;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	public String getXingbie() {
		return xingbie;
	}
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	public String getChusheng() {
		return chusheng;
	}
	public void setChusheng(String chusheng) {
		this.chusheng = chusheng;
	}
	
	public String getPiaoshu() {
		return piaoshu;
	}
	public void setPiaoshu(String piaoshu) {
		this.piaoshu = piaoshu;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getFujian() {
		return fujian;
	}
	public void setFujian(String fujian) {
		this.fujian = fujian;
	}
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}

}