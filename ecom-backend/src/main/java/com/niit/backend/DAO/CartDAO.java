package com.niit.backend.DAO;

import com.niit.backend.entity.Cart;

public interface CartDAO {
	
	public Cart get(int userId);
	public void saveOrUpdateAgain(Cart cart);
	public boolean saveOrUpdate(Cart cart);
	
}
