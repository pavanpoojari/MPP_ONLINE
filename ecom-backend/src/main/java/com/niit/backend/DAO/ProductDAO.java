package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.Product;

public interface ProductDAO {
	
	public Product get(int id);
	public List<Product> list();
	
	public Product getByCategory(int categoryId);
	
	public boolean create(Product product);
	public boolean delete(Product product);
	public boolean saveOrUpdate(Product product);
	
}
