package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.User;

public interface UserDAO {
	
	public List<User> list();
	public User get(int id);
	public User getByuserName(String userName);
	
	public boolean create(User user);
	public boolean delete(User user);
	public boolean saveOrUpdate(User user);	
	public boolean isValidate(String userName, String password);
}
