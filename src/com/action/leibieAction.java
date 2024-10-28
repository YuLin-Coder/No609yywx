package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TLeibieDAO;
import com.model.TLeibie;
import com.opensymphony.xwork2.ActionSupport;

public class leibieAction extends ActionSupport
{
	private int id;
	private String mingcheng;
	private String del;
	
    private TLeibieDAO leibieDAO;	
	
	
	public String leibieAdd()
	{
		TLeibie leibie=new TLeibie();
		
		leibie.setMingcheng(mingcheng);
		leibie.setDel("no");
		
		leibieDAO.save(leibie);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "类别信息添加完毕");
		return "msg";
	}
	
	
	public String leibieMana()
	{
		String sql="from TLeibie where Del='no'";
		List leibieList=leibieDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("leibieList", leibieList);
		return ActionSupport.SUCCESS;
		
	}
	
	
	public String leibieDel()
	{
		
		TLeibie leibie=leibieDAO.findById(id);
		leibie.setDel("yes");
		
		leibieDAO.attachDirty(leibie);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "类别信息删除完毕");
		
		return "msg";
	}
	
	public String leibiePre()
	{
		
		TLeibie leibie=leibieDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("leibie", leibie);
		return ActionSupport.SUCCESS;
	}
	
	
	public String leibieEdit()
	{
		
		TLeibie leibie=leibieDAO.findById(id);
		
		leibie.setMingcheng(mingcheng);
		leibie.setDel("no");
		
		leibieDAO.attachDirty(leibie);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "类别信息修改完毕");
		return "msg";
	}
	
	
	
	

	public int getId()
	{
		return id;
	}


	public void setId(int id)
	{
		this.id = id;
	}


	public String getMingcheng()
	{
		return mingcheng;
	}


	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}


	public String getDel()
	{
		return del;
	}


	public void setDel(String del)
	{
		this.del = del;
	}


	public TLeibieDAO getLeibieDAO()
	{
		return leibieDAO;
	}


	public void setLeibieDAO(TLeibieDAO leibieDAO)
	{
		this.leibieDAO = leibieDAO;
	}
	
}
