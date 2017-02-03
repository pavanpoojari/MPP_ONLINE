package com.niit.backend.DAO;

import com.niit.backend.entity.Cart;

public interface CartDAO {
	
	Cart get(int userId);
	void saveOrUpdateAgain(Cart cart);
	boolean saveOrUpdate(Cart cart);
	
}
