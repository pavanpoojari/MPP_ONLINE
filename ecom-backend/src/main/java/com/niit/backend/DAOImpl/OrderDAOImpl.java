package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.OrderDAO;
import com.niit.backend.entity.Order;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private Order order;
	
	@Autowired
	private OrderDAO orderDAO; 
	
	@Override
	@Transactional
	public Order get(int orderId) {
		return (Order) sessionFactory.getCurrentSession().get(Order.class, orderId);
	}

	@Override
	@Transactional
	public boolean create(Order order) {
		
		try {
			sessionFactory.getCurrentSession().save(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	@Transactional
	public List<Order> list(int userId) {
		String hql = "FROM ORDERS WHERE USER_ID = :userId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("userId", userId);
		return query.list();
	}

}
