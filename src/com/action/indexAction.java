package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGeshouDAO;
import com.dao.TGonggaoDAO;
import com.dao.TJieshaoDAO;
import com.dao.TLeibieDAO;
import com.dao.TXinwenDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
    private TGonggaoDAO gonggaoDAO;
    private TJieshaoDAO jieshaoDAO;
    private TGeshouDAO geshouDAO;
    private TLeibieDAO leibieDAO;

	public TLeibieDAO getLeibieDAO() {
		return leibieDAO;
	}


	public void setLeibieDAO(TLeibieDAO leibieDAO) {
		this.leibieDAO = leibieDAO;
	}


	public TGeshouDAO getGeshouDAO() {
		return geshouDAO;
	}


	public void setGeshouDAO(TGeshouDAO geshouDAO) {
		this.geshouDAO = geshouDAO;
	}


	public TJieshaoDAO getJieshaoDAO() {
		return jieshaoDAO;
	}


	public void setJieshaoDAO(TJieshaoDAO jieshaoDAO) {
		this.jieshaoDAO = jieshaoDAO;
	}


	public TGonggaoDAO getGonggaoDAO() {
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO) {
		this.gonggaoDAO = gonggaoDAO;
	}



	public String index()
	{
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		Map session=ActionContext.getContext().getSession();
		
		
		String sql  ="from TGonggao order by gonggaoId desc";
		List gonggaoList=gonggaoDAO.getHibernateTemplate().find(sql);
		if(gonggaoList.size()>2)
		{
			gonggaoList=gonggaoList.subList(0, 2);
		}
		request.put("gonggaoList", gonggaoList);
		
		
		
		String sql1="from TJieshao where id=1";
		List list=jieshaoDAO.getHibernateTemplate().find(sql1);
		request.put("jieshao", list.get(0));
		
		
		
		String sql2="from TGeshou where del='no'";
		List geshouList=geshouDAO.getHibernateTemplate().find(sql2);
		if(geshouList.size()>5)
		{
			geshouList=geshouList.subList(0, 5);
		}
		request.put("geshouList", geshouList);
		
		
		
		String sql3="from TLeibie where Del='no'";
		List leibieList=leibieDAO.getHibernateTemplate().find(sql3);
		session.put("leibieList", leibieList);
		
		
		return ActionSupport.SUCCESS;
	}
	

}
