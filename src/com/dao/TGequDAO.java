package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TGequ;

/**
 * A data access object (DAO) providing persistence and search support for TGequ
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.model.TGequ
 * @author MyEclipse Persistence Tools
 */

public class TGequDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(TGequDAO.class);
	// property constants
	public static final String LEIBIE_ID = "leibieId";
	public static final String MINGCHENG = "mingcheng";
	public static final String GESHOU_ID = "geshouId";
	public static final String JIESHAO = "jieshao";
	public static final String FUJIAN = "fujian";
	public static final String SHIJIAN = "shijian";
	public static final String DIANJI = "dianji";
	public static final String DEL = "del";

	protected void initDao() {
		// do nothing
	}

	public void save(TGequ transientInstance) {
		log.debug("saving TGequ instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TGequ persistentInstance) {
		log.debug("deleting TGequ instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TGequ findById(java.lang.Integer id) {
		log.debug("getting TGequ instance with id: " + id);
		try {
			TGequ instance = (TGequ) getHibernateTemplate().get(
					"com.model.TGequ", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TGequ instance) {
		log.debug("finding TGequ instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TGequ instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TGequ as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLeibieId(Object leibieId) {
		return findByProperty(LEIBIE_ID, leibieId);
	}

	public List findByMingcheng(Object mingcheng) {
		return findByProperty(MINGCHENG, mingcheng);
	}

	public List findByGeshouId(Object geshouId) {
		return findByProperty(GESHOU_ID, geshouId);
	}

	public List findByJieshao(Object jieshao) {
		return findByProperty(JIESHAO, jieshao);
	}

	public List findByFujian(Object fujian) {
		return findByProperty(FUJIAN, fujian);
	}

	public List findByShijian(Object shijian) {
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByDianji(Object dianji) {
		return findByProperty(DIANJI, dianji);
	}

	public List findByDel(Object del) {
		return findByProperty(DEL, del);
	}

	public List findAll() {
		log.debug("finding all TGequ instances");
		try {
			String queryString = "from TGequ";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TGequ merge(TGequ detachedInstance) {
		log.debug("merging TGequ instance");
		try {
			TGequ result = (TGequ) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TGequ instance) {
		log.debug("attaching dirty TGequ instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TGequ instance) {
		log.debug("attaching clean TGequ instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TGequDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TGequDAO) ctx.getBean("TGequDAO");
	}
}