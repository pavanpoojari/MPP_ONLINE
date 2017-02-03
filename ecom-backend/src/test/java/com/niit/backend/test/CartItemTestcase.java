package com.niit.backend.test;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.DAO.CartDAO;
import com.niit.backend.DAO.CartItemDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Cart;
import com.niit.backend.entity.CartItem;
import com.niit.backend.entity.Product;
import com.niit.backend.entity.User;

public class CartItemTestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;

	@Autowired
	static UserDAO userDAO;
	@Autowired
	static User user;

	@Autowired
	static CartDAO cartDAO;
	@Autowired
	static Cart cart;

	@Autowired
	static CartItemDAO cartItemDAO;
	@Autowired
	static CartItem cartItem;

	@Autowired
	static ProductDAO productDAO;
	@Autowired
	static Product product;

	public CartItemTestcase() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.backend");
		context.refresh();

		product = (Product) context.getBean("product");
		productDAO = (ProductDAO) context.getBean("productDAO");

		cart = (Cart) context.getBean("cart");
		cartDAO = (CartDAO) context.getBean("cartDAO");

		user = (User) context.getBean("user");
		userDAO = (UserDAO) context.getBean("userDAO");

		cartItem = (CartItem) context.getBean("cartItem");
		cartItemDAO = (CartItemDAO) context.getBean("cartItemDAO");
	}

	// Adding the CartItems
	/*@Test
	public void createCartItem() {
		user = userDAO.getByuserName("test");
		product = productDAO.get(198);
		Set<CartItem> cartItems = new HashSet<>();
		cartItem.setProduct(product.getProductId());
		cartItem.setPrice(product.getPrice());
		cartItem.setTotal(cartItem.getTotal());
		cartItems.add(cartItem);
		cart.setCartItem(cartItems);
		cart.setNoofcartitems(cartItems.size());
		cart.setUser(user);
		cart.setTotal(cart.getTotal());
		cartItem.setCart(cart);
		cartItemDAO.create(cartItem);
	}*/
	
	
}
