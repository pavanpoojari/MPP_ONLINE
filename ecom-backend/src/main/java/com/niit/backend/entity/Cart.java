package com.niit.backend.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.springframework.stereotype.Component;

@Entity(name="CART")
@Component
public class Cart implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="CART_ID")
	private int cartId;
	private int total;
	private int noofcartitems;
	
	@OneToOne
	@JoinColumn(name = "USER_ID")
	private User user;
	
	@OneToMany(mappedBy = "cart", fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn(name = "CART_ITEM_ID")
	private Set<CartItem> cartItems;
	
	
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getNoofcartitems() {
		return noofcartitems;
	}

	public void setNoofcartitems(int noofcartitems) {
		this.noofcartitems = noofcartitems;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(Set<CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", total=" + total + ", noofcartitems=" + noofcartitems + ", user=" + user
				+ ", cartItem=" + cartItems + "]";
	}
	
}
