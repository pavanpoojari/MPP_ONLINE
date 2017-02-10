package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.CartItem;

public interface CartItemDAO {
	
	public List<CartItem> list(int id);
	public CartItem get(int cartId);
	
	public boolean create(CartItem cartItem);
	public boolean delete(CartItem cartItem);
	public boolean saveOrUpdate(CartItem cartItem);
	
	public CartItem getByProductId(int productId, int cartId);
	public boolean existingCartItem(int productId, int cartId);
}
