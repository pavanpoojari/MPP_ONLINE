package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.Category;

public interface CategoryDAO {
	
	public Category get(int id);
	public List<Category> list();
	public Category getCategory(int id);
	
	public boolean create(Category category);
	public boolean delete(Category category);
	public boolean saveOrUpdate(Category category);
}
