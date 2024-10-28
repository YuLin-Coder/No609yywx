package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.TToupiaoDAO;
import com.model.TToupiao;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class toupiaoAction extends ActionSupport
{
	private Integer id;
	private Integer geshouId;
	private Integer userId;
	private String shijian;
	
	private String message;
	private String path;
	
	
	private TToupiaoDAO toupiaoDAO;
	
	
	
	public String toupiaoAdd()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		TUser user=(TUser)session.getAttribute("user");
		
		
		String s=shifoutoupiaothisgeshou(geshouId, user.getUserId());
		if(s.equals("yitou"))
		{
			this.setMessage("请不要重复投票该歌手");
			this.setPath("index.action");
			return "succeed";
		}
		
		TToupiao toupiao=new TToupiao();
		
		//toupiao.setId(id);
		toupiao.setGeshouId(geshouId);
		toupiao.setUserId(user.getUserId());
		toupiao.setShijian(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		
		toupiaoDAO.save(toupiao);
		
		this.setMessage("投票成功");
		this.setPath("index.action");
		return "succeed";
	}
		
	
	
    public String shifoutoupiaothisgeshou(int geshouId,int userId)
    {
    	String sql="from TToupiao where geshouId=? and userId=?";
    	Object[] c={geshouId,userId};
    	
    	List list=toupiaoDAO.getHibernateTemplate().find(sql,c);
    	if(list.size()>0)
    	{
    		return "yitou";
    	}
    	else
    	{
    		return "weitou";
    	}
    }
    
    


	public Integer getId()
	{
		return id;
	}






	public void setId(Integer id)
	{
		this.id = id;
	}


	public Integer getGeshouId()
	{
		return geshouId;
	}






	public void setGeshouId(Integer geshouId)
	{
		this.geshouId = geshouId;
	}






	public String getMessage()
	{
		return message;
	}



	public void setMessage(String message)
	{
		this.message = message;
	}



	public String getPath()
	{
		return path;
	}



	public void setPath(String path)
	{
		this.path = path;
	}



	public Integer getUserId()
	{
		return userId;
	}






	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}






	public String getShijian()
	{
		return shijian;
	}






	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}






	public TToupiaoDAO getToupiaoDAO()
	{
		return toupiaoDAO;
	}






	public void setToupiaoDAO(TToupiaoDAO toupiaoDAO)
	{
		this.toupiaoDAO = toupiaoDAO;
	}

}
