package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TGeshou;

/**
 * A data access object (DAO) providing persistence and search support for
 * TGeshou entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.TGeshou
 * @author MyEclipse Persistence Tools
 */

public class TGeshouDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TGeshouDAO.class);
	// property constants
	public static final String XINGMING = "xingming";
	public static final String XINGBIE = "xingbie";
	public static final String JIANJIE = "jianjie";
	public static final String FUJIAN = "fujian";
	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TGeshou transientInstance)
	{
		log.debug("saving TGeshou instance");
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

	public void delete(TGeshou persistentInstance)
	{
		log.debug("deleting TGeshou instance");
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

	public TGeshou findById(java.lang.Integer id)
	{
		log.debug("getting TGeshou instance with id: " + id);
		try
		{
			TGeshou instance = (TGeshou) getHibernateTemplate().get(
					"com.model.TGeshou", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TGeshou instance)
	{
		log.debug("finding TGeshou instance by example");
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
		log.debug("finding TGeshou instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TGeshou as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByXingming(Object xingming)
	{
		return findByProperty(XINGMING, xingming);
	}

	public List findByXingbie(Object xingbie)
	{
		return findByProperty(XINGBIE, xingbie);
	}

	public List findByJianjie(Object jianjie)
	{
		return findByProperty(JIANJIE, jianjie);
	}

	public List findByFujian(Object fujian)
	{
		return findByProperty(FUJIAN, fujian);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TGeshou instances");
		try
		{
			String queryString = "from TGeshou";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TGeshou merge(TGeshou detachedInstance)
	{
		log.debug("merging TGeshou instance");
		try
		{
			TGeshou result = (TGeshou) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TGeshou instance)
	{
		log.debug("attaching dirty TGeshou instance");
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

	public void attachClean(TGeshou instance)
	{
		log.debug("attaching clean TGeshou instance");
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

	public static TGeshouDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TGeshouDAO) ctx.getBean("TGeshouDAO");
	}
}