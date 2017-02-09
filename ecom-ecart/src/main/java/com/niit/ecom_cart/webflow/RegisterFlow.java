package com.niit.ecom_cart.webflow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Cart;
import com.niit.backend.entity.User;

@Component
public class RegisterFlow {

	@Autowired
	private User user;

	@Autowired
	private UserDAO userDAO;
	
	public User initFlow() {
		return user;
	}
	
	public String create(User user) {
		Cart cart = new Cart();
		cart.setUser(user);
		user.setCart(cart);
		
		userDAO.create(user);
		
		return "success";
	}
}
