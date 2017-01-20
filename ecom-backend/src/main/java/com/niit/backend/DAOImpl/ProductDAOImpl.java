package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.entity.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Product get(int id) {
		return(Product)sessionFactory.getCurrentSession().get(Product.class, id);
	}

	@Override
	@Transactional
	public List<Product> list() {
		String hql = "FROM PRODUCT";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		System.out.println(query.list());
		return query.list();
	}

	@Override
	@Transactional
	public boolean create(Product product) {
		
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean delete(Product product) {
	
		try {
			sessionFactory.getCurrentSession().delete(product);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Product product) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public Product getByCategory(int categoryId) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, categoryId);
	}
	
}
