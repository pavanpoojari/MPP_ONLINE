package com.niit.backend.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.entity.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	List<Product> products = new ArrayList<>();
	{
		products.add(new Product(1, "ABC"));
		products.add(new Product(2, "XYZ"));
		products.add(new Product(3, "PQR"));
	}
	
	@Override
	public List<Product> list() {
		return products;
	}
	public Product get(int id) {
		for(Product p : products){
			if(p.getId()==id){
				return p;
			}
		}
		return null;
	}
	@Override
	@Transactional
	public boolean add(Product product) {
		sessionFactory.getCurrentSession().persist(product);
		return true;
	}
	

}
