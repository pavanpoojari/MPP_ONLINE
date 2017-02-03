package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.CartItemDAO;
import com.niit.backend.entity.CartItem;

@Repository("cartItemDAO")
public class CartItemDAOImpl implements CartItemDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<CartItem> list(int cartId) {
	
		String hql = "FROM CART_ITEM WHERE CART_ID = : cartId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("cartId", cartId);
		return query.list();
		
	}
	
	@Override
	@Transactional
	public CartItem get(int id) {
		return (CartItem) sessionFactory.getCurrentSession().get(CartItem.class, id);
	}

	@Override
	@Transactional
	public CartItem getByProductId(int productId, int cartId) {
		
		String hql = "FROM CART_ITEM WHERE PRODUCT_ID = :productId AND CART_ID = : cartId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("productId", productId);
		query.setParameter("cartId", cartId);
		List<CartItem> cartItems = query.getResultList();
		if(cartItems != null && !cartItems.isEmpty()){
			return cartItems.get(0);
		}
		return null;
		
	}

	@Override
	@Transactional
	public boolean existingCartItem(int productId, int cartId) {
		
		String hql = "FROM CART_ITEM WHERE CART_ID = : cartId AND PRODUCT_ID = :productId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("cartId", cartId);
		query.setParameter("productId", productId);
		if(query.list().isEmpty()){
			return false;
		}else{
			return true;
		}
		
	}

	@Override
	@Transactional
	public boolean create(CartItem cartItem) {
		
		try {
			sessionFactory.getCurrentSession().save(cartItem);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean delete(CartItem cartItem) {
		
		try {
			sessionFactory.getCurrentSession().delete(cartItem);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(CartItem cartItem) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

}
