package com.niit.backend.DAO;

import com.niit.backend.entity.Address;

public interface AddressDAO {

	public Address getAddress(int id);
	public Address getByUserId(int userId);
	public boolean create(Address address);
	public boolean delete(Address address);
	public boolean saveOrUpdate(Address address);
}
