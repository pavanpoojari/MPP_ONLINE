package com.niit.ecom_cart.webflow;

import java.util.Set;

import javax.servlet.http.HttpSession;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.niit.backend.DAO.AddressDAO;
import com.niit.backend.DAO.CartDAO;
import com.niit.backend.DAO.CartItemDAO;
import com.niit.backend.DAO.OrderDAO;
import com.niit.backend.DAO.OrderItemDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Address;
import com.niit.backend.entity.Cart;
import com.niit.backend.entity.CartItem;
import com.niit.backend.entity.Order;
import com.niit.backend.entity.OrderItem;
import com.niit.backend.entity.User;

@Component
public class CartFlow {

	@Autowired
	private CartItemDAO cartItemDAO;
	@Autowired
	private CartItem cartItem;

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User user;

	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private Cart cart;

	@Autowired
	private Address address;
	@Autowired
	private AddressDAO addressDAO;

	@Autowired
	private Order order;
	@Autowired
	private OrderDAO orderDAO;

	@Autowired
	private OrderItem orderItem;
	@Autowired
	private OrderItemDAO orderItemDAO;

	@Autowired
	HttpSession session;

	@Autowired
	private OrderBean orderBean;

	public OrderBean initFlow() {
		user = userDAO.getByuserName(SecurityContextHolder.getContext().getAuthentication().getName());
		orderBean.setUser(user);
		orderBean.setCart(user.getCart());
		orderBean.setCartItem(user.getCart().getCartItems());
		return orderBean;
	}

	public String updateCart(OrderBean orderBean) {

		user = orderBean.getUser();
		cart = user.getCart();
		Hibernate.initialize(cart.getCartItems());
		Set<CartItem> cartItem = cart.getCartItems();
		for (CartItem deleteItem : cartItem) {
			cartItemDAO.delete(deleteItem);
		}
		// cart.setCartItems(cartItems);
		cartDAO.saveOrUpdateAgain(cart);
		cartDAO.saveOrUpdate(cart);
		user.setCart(cart);
		session.setAttribute("noofcartItems", cartItem.size());
		return "success";

	}

	/*
	 * public String addAddress(OrderBean orderBean) {
	 * addressDAO.create(address); return "success"; }
	 * 
	 * public String choosePayment(OrderBean orderBean) {
	 * 
	 * user = userDAO.getByuserName(SecurityContextHolder.getContext().
	 * getAuthentication().getName()); cart = user.getCart(); Set<CartItem>
	 * cartItems = cart.getCartItems(); Set<OrderItem> orderItems = new
	 * HashSet<>(); order.setOrderItems(orderItems); order.setUser(user);
	 * order.setNoofcartitems(orderBean.getCart().getNoofcartitems());
	 * order.setTotal(orderBean.getCart().getTotal());
	 * order.getPaymentdetails(orderBean.getPaymentdetails());
	 * orderDAO.create(order);
	 * address.setAddress(orderBean.getAddress().getAddress());
	 * address.setCity(orderBean.getAddress().getCity());
	 * address.setCountry(orderBean.getAddress().getCountry());
	 * address.setPincode(orderBean.getAddress().getPincode());
	 * address.setUser(user); for (CartItem cartItem : cartItems) {
	 * orderItem.setPrice(cartItem.getPrice());
	 * orderItem.setProduct(cartItem.getProduct());
	 * orderItem.setTotal(cartItem.getTotal()); orderItem.setOrder(order);
	 * orderItems.add(orderItem); orderItemDAO.create(orderItem);
	 * cartItemDAO.delete(cartItem); } cartDAO.saveOrUpdateAgain(cart);
	 * cartDAO.saveOrUpdate(cart); return "success"; }
	 */
}
