package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TJieshao;

/**
 * Data access object (DAO) for domain model class TJieshao.
 * 
 * @see com.model.TJieshao
 * @author MyEclipse Persistence Tools
 */

public class TJieshaoDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TJieshaoDAO.class);

	protected void initDao()
	{
		// do nothing
	}

	public void save(TJieshao transientInstance)
	{
		log.debug("saving TJieshao instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TJieshao persistentInstance)
	{
		log.debug("deleting TJieshao instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TJieshao findById(java.lang.String id)
	{
		log.debug("getting TJieshao instance with id: " + id);
		try
		{
			TJieshao instance = (TJieshao) getHibernateTemplate().get(
					"com.model.TJieshao", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TJieshao instance)
	{
		log.debug("finding TJieshao instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TJieshao instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TJieshao as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll()
	{
		log.debug("finding all TJieshao instances");
		try
		{
			String queryString = "from TJieshao";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TJieshao merge(TJieshao detachedInstance)
	{
		log.debug("merging TJieshao instance");
		try
		{
			TJieshao result = (TJieshao) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TJieshao instance)
	{
		log.debug("attaching dirty TJieshao instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TJieshao instance)
	{
		log.debug("attaching clean TJieshao instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TJieshaoDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TJieshaoDAO) ctx.getBean("TJieshaoDAO");
	}
}