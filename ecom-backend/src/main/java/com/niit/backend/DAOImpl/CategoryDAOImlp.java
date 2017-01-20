package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.CategoryDAO;
import com.niit.backend.entity.Category;

@Repository("categoryDAO")
public class CategoryDAOImlp implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Category get(int id) {
		return (Category) sessionFactory.getCurrentSession().get(Category.class, id);
	}

	@Override
	@Transactional
	public List<Category> list() {
		String hql = "FROM CATEGORY";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		System.out.println(query.list());
		return query.list();
	}

	@Override
	@Transactional
	public boolean create(Category category) {
		
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean delete(Category category) {
		
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Category category) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

}
