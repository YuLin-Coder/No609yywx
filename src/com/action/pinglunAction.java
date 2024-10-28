package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TPinglunDAO;
import com.dao.TUserDAO;
import com.model.TPinglun;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class pinglunAction extends ActionSupport
{
	private Integer id;
	private String neirong;
	private String shijian;
	private Integer gequId;
	
	private Integer userId;
	
	
	private TPinglunDAO pinglunDAO;
	private TUserDAO userDAO;
	
	public String pinglunAdd()
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		System.out.println(user.getUserId()+"YYY");
		
		TPinglun pinglun=new TPinglun();
		
		//pinglun.setId(id);
		pinglun.setNeirong(neirong);
		pinglun.setShijian(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		pinglun.setGequId(gequId);
		pinglun.setUserId(user.getUserId());
		
		pinglunDAO.save(pinglun);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "发布评论完毕");
		return "msg";
	}
	
	public String pinglunMana()
	{
		String sql="from TPinglun where gequId="+gequId;
		List pinglunList=pinglunDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("pinglunList", pinglunList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String pinglunDel()
	{
		
		TPinglun pinglun=pinglunDAO.findById(id);
		pinglunDAO.delete(pinglun);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "评论信息删除完毕");
		return "msg";
	}

	
	

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public TUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public Integer getGequId() {
		return gequId;
	}

	public void setGequId(Integer gequId) {
		this.gequId = gequId;
	}

	public String getNeirong()
	{
		return neirong;
	}

	public void setNeirong(String neirong)
	{
		this.neirong = neirong;
	}

	public TPinglunDAO getPinglunDAO()
	{
		return pinglunDAO;
	}

	public void setPinglunDAO(TPinglunDAO pinglunDAO)
	{
		this.pinglunDAO = pinglunDAO;
	}

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

}
