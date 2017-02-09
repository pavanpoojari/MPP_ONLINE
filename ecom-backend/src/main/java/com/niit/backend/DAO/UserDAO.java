package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.User;

public interface UserDAO {
	
	List<User> list();
	User get(int id);
	User getByuserName(String userName);
	
	boolean create(User user);
	boolean delete(User user);
	boolean saveOrUpdate(User user);	
	boolean isValidate(String userName, String password);
}
