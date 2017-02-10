package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.OrderItem;

public interface OrderItemDAO {
	
	public OrderItem get(int id);
	public List<OrderItem> list(int id);
	
	public boolean create(OrderItem orderItem);
	public boolean delete(OrderItem orderItem);
}
