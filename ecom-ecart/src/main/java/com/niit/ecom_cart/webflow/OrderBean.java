package com.niit.ecom_cart.webflow;

import java.io.Serializable;
import java.util.Set;

import org.springframework.stereotype.Controller;

import com.niit.backend.entity.Address;
import com.niit.backend.entity.Cart;
import com.niit.backend.entity.CartItem;
import com.niit.backend.entity.User;

@Controller
public class OrderBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Cart cart;
	private Set<CartItem> cartItem;
	private Address address;
	private User user;
	private String paymentdetails;
	
	
	public String getPaymentdetails() {
		return paymentdetails;
	}
	public void setPaymentdetails(String paymentdetails) {
		this.paymentdetails = paymentdetails;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Set<CartItem> getCartItem() {
		return cartItem;
	}
	public void setCartItem(Set<CartItem> cartItem) {
		this.cartItem = cartItem;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public String toString() {
		return "OrderBean [cart=" + cart + ", cartItem=" + cartItem + ", address=" + address + ", user=" + user + "]";
	}
	
}
