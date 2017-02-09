package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.CartDAO;
import com.niit.backend.DAO.CartItemDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Cart;
import com.niit.backend.entity.CartItem;
import com.niit.backend.entity.User;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {

	@Autowired
	private User user;
	
	@Autowired
	private Cart cart;
	
	@Autowired
	private CartItemDAO cartItemDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Cart get(int cartId) {
		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, cartId);
	}

	@Override
	@Transactional
	public void saveOrUpdateAgain(Cart cart) {
		int gtotal = 0;
		List<CartItem> listOfCartItems = cartItemDAO.list(cart.getCartId());
		cart.setNoofcartitems(listOfCartItems.size());
		for (CartItem cartItem : listOfCartItems) {
			gtotal = gtotal + cartItem.getPrice();
		}
		cart.setTotal(gtotal);
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Cart cart) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(cart);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

}
