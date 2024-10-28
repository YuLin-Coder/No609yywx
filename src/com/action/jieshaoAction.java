package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.dao.TJieshaoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class jieshaoAction extends ActionSupport
{
	private String neirong;
	private TJieshaoDAO jieshaoDAO;
	
	public String jieshaoMana()
	{
		String sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("jieshao", list.get(0));
		return ActionSupport.SUCCESS;
	}
	
	public String jieshaoEdit()
	{
		String sql="update TJieshao set neirong=? where id=1";
		Object[] c={neirong};
		jieshaoDAO.getHibernateTemplate().bulkUpdate(sql,c);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("msg", "ÐÞ¸Ä³É¹¦");
		return "msg";
	}
	
	
	public String jieshaoShow()
	{
		String sql="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("jieshao", list.get(0));
		return ActionSupport.SUCCESS;
	}

	public TJieshaoDAO getJieshaoDAO()
	{
		return jieshaoDAO;
	}

	public void setJieshaoDAO(TJieshaoDAO jieshaoDAO)
	{
		this.jieshaoDAO = jieshaoDAO;
	}

	public String getNeirong()
	{
		return neirong;
	}

	public void setNeirong(String neirong)
	{
		this.neirong = neirong;
	}
		
}
