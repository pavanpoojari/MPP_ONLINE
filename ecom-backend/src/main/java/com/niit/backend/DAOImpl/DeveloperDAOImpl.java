package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.DeveloperDAO;
import com.niit.backend.entity.Developer;

@Repository("developerDAO")
public class DeveloperDAOImpl implements DeveloperDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Developer get(int id) {
		return (Developer) sessionFactory.getCurrentSession().get(Developer.class, id);
	}

	@Override
	@Transactional
	public List<Developer> list() {
		String hql = " FROM DEVELOPER ";
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}

	@Override
	@Transactional
	public boolean create(Developer developer) {
		
		try {
			sessionFactory.getCurrentSession().save(developer);
			return true;
		} catch (HibernateException e) {
			return false;
		}

	}

	@Override
	@Transactional
	public boolean delete(Developer developer) {
		
		try {
			sessionFactory.getCurrentSession().delete(developer);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Developer developer) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(developer);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

}
