package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.Product;

public interface ProductDAO {
	List<Product> list();
	Product get(int id);
}
