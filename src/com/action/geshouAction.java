package com.action;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TGeshouDAO;
import com.dao.TToupiaoDAO;
import com.model.TGeshou;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.ComparatorGeshou;

public class geshouAction extends ActionSupport
{
	private Integer id;
	private String xingming;
	private String xingbie;
	private String chusheng;
	
	private String jianjie;
	private String fujian;
	private String del;
	
	private TGeshouDAO geshouDAO;
	private TToupiaoDAO toupiaoDAO;
	
	public String geshouAdd()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		
		TGeshou geshou=new TGeshou();
		
		//geshou.setId(id);
		geshou.setXingming(xingming);
		geshou.setXingbie(xingbie);
		geshou.setChusheng(chusheng);
		
		geshou.setJianjie(jianjie);
		geshou.setFujian(fujian);
		geshou.setDel("no");
		
		geshouDAO.save(geshou);
		
		request.setAttribute("msg", "操作成功");
		return "msg";
	}
		
	
	
	
	
	
	public String geshouMana()
	{
		String sql="from TGeshou where del='no'";
		List geshouList=geshouDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("geshouList", geshouList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String geshouDel()
	{
		TGeshou geshou=geshouDAO.findById(id);
		geshou.setDel("yes");
		geshouDAO.attachDirty(geshou);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("msg", "操作成功");
		return "msg";
	}

	public String geshouSelect()
	{
		String sql="from TGeshou where del='no'";
		List geshouList=geshouDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("geshouList", geshouList);
		return ActionSupport.SUCCESS;
	}
	
	public String geshouAll()
	{
		String sql="from TGeshou where del='no'";
		List geshouList=geshouDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("geshouList", geshouList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String geshouDetailQian()
	{
		TGeshou geshou=geshouDAO.findById(id);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("geshou", geshou);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String geshouRenqi()
	{
		String sql="from TGeshou where del='no'";
		List geshouList=geshouDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<geshouList.size();i++)
		{
			TGeshou geshou=(TGeshou)geshouList.get(i);
			geshou.setPiaoshu(String.valueOf(getpiaoshu(geshou.getId())));
		}
		
		ComparatorGeshou comparator = new ComparatorGeshou();
		Collections.sort(geshouList, comparator);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("geshouList", geshouList);
		return ActionSupport.SUCCESS;
	}


	public int getpiaoshu(int geshouId)
    {
    	String sql="from TToupiao where geshouId=?";
    	Object[] c={geshouId};
    	
    	List list=toupiaoDAO.getHibernateTemplate().find(sql,c);
    	return list.size();
    }


	public Integer getId()
	{
		return id;
	}






	public void setId(Integer id)
	{
		this.id = id;
	}






	public TToupiaoDAO getToupiaoDAO() {
		return toupiaoDAO;
	}






	public void setToupiaoDAO(TToupiaoDAO toupiaoDAO) {
		this.toupiaoDAO = toupiaoDAO;
	}






	public String getXingming()
	{
		return xingming;
	}






	public String getChusheng() {
		return chusheng;
	}






	public void setChusheng(String chusheng) {
		this.chusheng = chusheng;
	}






	public void setXingming(String xingming)
	{
		this.xingming = xingming;
	}






	public String getXingbie()
	{
		return xingbie;
	}






	public void setXingbie(String xingbie)
	{
		this.xingbie = xingbie;
	}






	public String getJianjie()
	{
		return jianjie;
	}






	public void setJianjie(String jianjie)
	{
		this.jianjie = jianjie;
	}






	public String getFujian()
	{
		return fujian;
	}






	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}






	public String getDel()
	{
		return del;
	}






	public void setDel(String del)
	{
		this.del = del;
	}






	public TGeshouDAO getGeshouDAO()
	{
		return geshouDAO;
	}






	public void setGeshouDAO(TGeshouDAO geshouDAO)
	{
		this.geshouDAO = geshouDAO;
	}
	
}
