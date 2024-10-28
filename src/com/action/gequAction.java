package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGequDAO;
import com.dao.TGeshouDAO;
import com.dao.TLeibieDAO;
import com.dao.TPinglunDAO;
import com.model.TGequ;
import com.opensymphony.xwork2.ActionSupport;

public class gequAction extends ActionSupport
{
	private Integer id;
	private Integer geshouId;
	private Integer leibieId;
	private String mingcheng;
	
	private String jieshao;
	private String fujian;
	private String shijian;
	private Integer dianji;
	
	private String del;
	
	private TGequDAO gequDAO;
	private TLeibieDAO leibieDAO;
	private TGeshouDAO geshouDAO;
	private TPinglunDAO pinglunDAO;
	
	public String gequAdd()
	{
		TGequ gequ=new TGequ();
		
		//gequ.setId(id);
		gequ.setGeshouId(geshouId);
		gequ.setLeibieId(leibieId);
		gequ.setMingcheng(mingcheng);
		
		gequ.setJieshao(jieshao);
		gequ.setFujian(fujian);
		gequ.setShijian(shijian);
		gequ.setDianji(0);
		
		gequ.setDel("no");
		
		gequDAO.save(gequ);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	
	public String gequMana()
	{
		String sql="from TGequ where del='no' order by leibieId";
		List gequList=gequDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<gequList.size();i++)
		{
			TGequ gequ=(TGequ)gequList.get(i);
			gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
			gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gequList", gequList);
		return ActionSupport.SUCCESS;
	}
	
	public String gequDel()
	{
		TGequ gequ=gequDAO.findById(id);
		gequ.setDel("yes");
		
		gequDAO.attachDirty(gequ);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "操作成功");
		return "msg";
	}
	
	public String gequAll()
	{
		String sql="from TGequ where del='no' order by id desc";
		List gequList=gequDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<gequList.size();i++)
		{
			TGequ gequ=(TGequ)gequList.get(i);
			gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
			gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		}
		
		if(gequList.size()>8)
		{
			gequList=gequList.subList(0, 8);
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gequList", gequList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String gequDetailQian()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TGequ gequ=gequDAO.findById(id);
		gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
		gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		
		
		request.put("gequ", gequ);
		
		String sql="from TPinglun where gequId="+id;
		List pinglunList =pinglunDAO.getHibernateTemplate().find(sql);
		
		request.put("pinglunList", pinglunList);
		
		return ActionSupport.SUCCESS;
	}
	
	
	
	
	
	
	public String gequByLeibie()
	{
		String sql="from TGequ where del='no' and leibieId=?";
		Object[] con={leibieId};
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		List gequList=gequDAO.getHibernateTemplate().find(sql,con);
		for(int i=0;i<gequList.size();i++)
		{
			TGequ gequ=(TGequ)gequList.get(i);
			gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
			gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		}
		request.put("gequList", gequList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String gequByGeshou()
	{
		String sql="from TGequ where del='no' and geshouId=?";
		Object[] con={geshouId};
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		List gequList=gequDAO.getHibernateTemplate().find(sql,con);
		for(int i=0;i<gequList.size();i++)
		{
			TGequ gequ=(TGequ)gequList.get(i);
			gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
			gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		}
		request.put("gequList", gequList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String gequRes()
	{
		String sql="from TGequ where del='no' and mingcheng like '%"+mingcheng.trim()+"%'";

		List gequList=gequDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<gequList.size();i++)
		{
			TGequ gequ=(TGequ)gequList.get(i);
			gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
			gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gequList", gequList);
		return ActionSupport.SUCCESS;
	}
	
	public String gequDianji()
	{
		String sql="from TGequ where del='no' order by dianji desc";
		List gequList=gequDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<gequList.size();i++)
		{
			TGequ gequ=(TGequ)gequList.get(i);
			gequ.setLeibie(leibieDAO.findById(gequ.getLeibieId()));
			gequ.setGeshou(geshouDAO.findById(gequ.getGeshouId()));
		}
		if(gequList.size()>8)
		{
			gequList=gequList.subList(0, 8);
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gequList", gequList);
		return ActionSupport.SUCCESS;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getLeibieId() {
		return leibieId;
	}


	public void setLeibieId(Integer leibieId) {
		this.leibieId = leibieId;
	}


	public String getMingcheng() {
		return mingcheng;
	}


	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}


	public Integer getGeshouId() {
		return geshouId;
	}


	public void setGeshouId(Integer geshouId) {
		this.geshouId = geshouId;
	}


	public String getJieshao() {
		return jieshao;
	}


	public void setJieshao(String jieshao) {
		this.jieshao = jieshao;
	}


	public String getFujian() {
		return fujian;
	}


	public void setFujian(String fujian) {
		this.fujian = fujian;
	}


	public String getShijian() {
		return shijian;
	}


	public void setShijian(String shijian) {
		this.shijian = shijian;
	}


	public Integer getDianji() {
		return dianji;
	}


	public void setDianji(Integer dianji) {
		this.dianji = dianji;
	}


	public String getDel() {
		return del;
	}


	public void setDel(String del) {
		this.del = del;
	}


	public TGequDAO getGequDAO() {
		return gequDAO;
	}


	public void setGequDAO(TGequDAO gequDAO) {
		this.gequDAO = gequDAO;
	}


	public TLeibieDAO getLeibieDAO() {
		return leibieDAO;
	}


	public void setLeibieDAO(TLeibieDAO leibieDAO) {
		this.leibieDAO = leibieDAO;
	}


	public TGeshouDAO getGeshouDAO() {
		return geshouDAO;
	}


	public TPinglunDAO getPinglunDAO() {
		return pinglunDAO;
	}


	public void setPinglunDAO(TPinglunDAO pinglunDAO) {
		this.pinglunDAO = pinglunDAO;
	}


	public void setGeshouDAO(TGeshouDAO geshouDAO) {
		this.geshouDAO = geshouDAO;
	}
	
}
