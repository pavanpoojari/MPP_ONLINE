package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.Order;

public interface OrderDAO {
	
	public Order get(int orderId);
	public boolean create(Order order);
	public List<Order> list(int userId);
}
