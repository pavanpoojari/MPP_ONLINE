package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.OrderItemDAO;
import com.niit.backend.entity.OrderItem;

@Repository("orderItemDAO")
public class OrderItemDAOImpl implements OrderItemDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public OrderItem get(int id) {
		return (OrderItem) sessionFactory.getCurrentSession().get(OrderItem.class, id);
	}

	@Override
	@Transactional
	public List<OrderItem> list(int id) {
		String hql = "FROM ORDER_ITEM WHERE ORDER_ID = :orderId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("orderId", id);
		return query.list();
	}

	@Override
	@Transactional
	public boolean create(OrderItem orderItem) {
		
		try {
			sessionFactory.getCurrentSession().save(orderItem);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean delete(OrderItem orderItem) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(orderItem);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

}
