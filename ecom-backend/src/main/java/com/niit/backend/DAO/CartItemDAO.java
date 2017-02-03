package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.CartItem;

public interface CartItemDAO {
	
	List<CartItem> list(int id);
	CartItem get(int cartId);
	
	public boolean create(CartItem cartItem);
	public boolean delete(CartItem cartItem);
	public boolean saveOrUpdate(CartItem cartItem);
	
	CartItem getByProductId(int productId, int cartId);
	boolean existingCartItem(int productId, int cartId);
}
