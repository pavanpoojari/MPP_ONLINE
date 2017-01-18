package com.niit.backend.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.entity.Product;

import junit.framework.Assert;

public class ProductTestcase {
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static Product product;
	
	@Autowired
	static ProductDAO productDAO;
	
	// Annotation
	public ProductTestcase() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.backend");
		context.refresh();
		
		product = (Product) context.getBean("product");
		productDAO =(ProductDAO)context.getBean("productDAO"); 
	}
	
	/*@Test
	public void createProductTestCase() {
		product.setCategoryId(3);
		product.setDeveloperId(1);
		product.setName("ANI VIEWS");
		product.setDescription("This is an Web template");
		product.setPrice(720);
		Assert.assertEquals("create ani views test case", true, productDAO.create(product));
	}*/
	
	//Update ProductTable
	/*@Test
	public void updateProductTestCase(){
		product = productDAO.get(1);
		Assert.assertEquals(true, productDAO.saveOrUpdate(product));
	}*/
	
	//Delete ProductTable
	/*@Test
	public void deleteProductTestCase() {
		product.setProductId(41);
		Assert.assertEquals("Delete Product test case", true, productDAO.delete(product));
	}*/
	
	//Get Product By ID
	@Test
	public void getByIdTest(){
		product = productDAO.get(1);
		Assert.assertEquals("This is valid!",product.getProductId(), productDAO.get(1).getProductId());
	}
	
	//To Fetch All Product From ProductTable
	/*@Test
	public void getAllProductTest(){
		int size = productDAO.list().size();
		Assert.assertEquals(5, size);
	}*/
	
}
