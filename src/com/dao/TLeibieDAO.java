package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TLeibie;

/**
 * A data access object (DAO) providing persistence and search support for
 * TLeibie entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.TLeibie
 * @author MyEclipse Persistence Tools
 */

public class TLeibieDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TLeibieDAO.class);
	// property constants
	public static final String MINGCHENG = "mingcheng";
	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TLeibie transientInstance)
	{
		log.debug("saving TLeibie instance");
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

	public void delete(TLeibie persistentInstance)
	{
		log.debug("deleting TLeibie instance");
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

	public TLeibie findById(java.lang.Integer id)
	{
		log.debug("getting TLeibie instance with id: " + id);
		try
		{
			TLeibie instance = (TLeibie) getHibernateTemplate().get(
					"com.model.TLeibie", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TLeibie instance)
	{
		log.debug("finding TLeibie instance by example");
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
		log.debug("finding TLeibie instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TLeibie as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByMingcheng(Object mingcheng)
	{
		return findByProperty(MINGCHENG, mingcheng);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TLeibie instances");
		try
		{
			String queryString = "from TLeibie";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TLeibie merge(TLeibie detachedInstance)
	{
		log.debug("merging TLeibie instance");
		try
		{
			TLeibie result = (TLeibie) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TLeibie instance)
	{
		log.debug("attaching dirty TLeibie instance");
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

	public void attachClean(TLeibie instance)
	{
		log.debug("attaching clean TLeibie instance");
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

	public static TLeibieDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TLeibieDAO) ctx.getBean("TLeibieDAO");
	}
}