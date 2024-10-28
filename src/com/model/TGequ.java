package com.model;

/**
 * TGequ entity. @author MyEclipse Persistence Tools
 */

public class TGequ implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer geshouId;
	private Integer leibieId;
	private String mingcheng;
	
	private String jieshao;
	private String fujian;
	private String shijian;
	private Integer dianji;
	
	private String del;

	private TLeibie leibie;
	private TGeshou geshou;

	/** default constructor */
	public TGequ() {
	}

	/** full constructor */
	public TGequ(Integer leibieId, String mingcheng, Integer geshouId,
			String jieshao, String fujian, String shijian, Integer dianji,
			String del) {
		this.leibieId = leibieId;
		this.mingcheng = mingcheng;
		this.geshouId = geshouId;
		this.jieshao = jieshao;
		this.fujian = fujian;
		this.shijian = shijian;
		this.dianji = dianji;
		this.del = del;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getLeibieId() {
		return this.leibieId;
	}

	public void setLeibieId(Integer leibieId) {
		this.leibieId = leibieId;
	}

	public String getMingcheng() {
		return this.mingcheng;
	}

	public TLeibie getLeibie() {
		return leibie;
	}

	public void setLeibie(TLeibie leibie) {
		this.leibie = leibie;
	}

	public TGeshou getGeshou() {
		return geshou;
	}

	public void setGeshou(TGeshou geshou) {
		this.geshou = geshou;
	}

	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}

	public Integer getGeshouId() {
		return this.geshouId;
	}

	public void setGeshouId(Integer geshouId) {
		this.geshouId = geshouId;
	}

	public String getJieshao() {
		return this.jieshao;
	}

	public void setJieshao(String jieshao) {
		this.jieshao = jieshao;
	}

	public String getFujian() {
		return this.fujian;
	}

	public void setFujian(String fujian) {
		this.fujian = fujian;
	}

	public String getShijian() {
		return this.shijian;
	}

	public void setShijian(String shijian) {
		this.shijian = shijian;
	}

	public Integer getDianji() {
		return this.dianji;
	}

	public void setDianji(Integer dianji) {
		this.dianji = dianji;
	}

	public String getDel() {
		return this.del;
	}

	public void setDel(String del) {
		this.del = del;
	}

}