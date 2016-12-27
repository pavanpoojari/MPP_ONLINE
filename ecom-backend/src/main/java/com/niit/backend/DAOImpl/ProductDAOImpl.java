package com.niit.backend.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	
	List<Product> products = new ArrayList<>();
	
	public ProductDAOImpl() {
		products.add(new Product(1, "ABC"));
		products.add(new Product(2, "XYZ"));
		products.add(new Product(3, "PQR"));
	}
	public Product get(int id) {
		return null;
	}
	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		return products;
	}

}
