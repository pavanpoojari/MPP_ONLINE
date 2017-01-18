package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.entity.Developer;

public interface DeveloperDAO {
	
	public Developer get(int id);
	public List<Developer> list();
	
	public boolean create(Developer developer);
	public boolean delete(Developer developer);
	public boolean saveOrUpdate(Developer developer);
}
