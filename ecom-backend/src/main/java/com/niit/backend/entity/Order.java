package com.niit.backend.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;

import org.springframework.stereotype.Component;

@Entity(name="ORDERS")
@Component
public class Order implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="ORDER_ID")
	private int orderId;
	
	@OneToMany(mappedBy ="order", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn(name = "ORDER_ITEM_ID")
	private Set<OrderItem> orderItems;
	
	private int total;
	private int noofcartitems;
	private String paymentdetails;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID")
	private User user;

	//Getter And Setter Method
	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Set<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(Set<OrderItem> orderItems) {
		this.orderItems = orderItems;
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

	public String getPaymentdetails(String string) {
		return paymentdetails;
	}

	public void setPaymentdetails(String paymentdetails) {
		this.paymentdetails = paymentdetails;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	//ToString Method
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderItems=" + orderItems + ", total=" + total + ", noofcartitems="
				+ noofcartitems + ", paymentdetails=" + paymentdetails + ", user=" + user + "]";
	}
}
