package com.niit.backend.test;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.DAO.CategoryDAO;
import com.niit.backend.entity.Category;

public class CategoryTestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static Category category;
	
	@Autowired
	static CategoryDAO categoryDAO;
	
	// Annotation
		public CategoryTestcase() {
			context = new AnnotationConfigApplicationContext();
			context.scan("com.niit.backend");
			context.refresh();
			
			category = (Category) context.getBean("category");
			categoryDAO =(CategoryDAO)context.getBean("categoryDAO"); 
		}
		
		//Adding the Category
		 @Test 
		 public void createCategoryTest() { 
			 category.setId(6);
			 category.setName("Computer");
			 category.setDescription("This is Dummy Computer");
			 Assert.assertEquals(true, categoryDAO.create(category));
		 }
		
		//Delete CategoryTable
		/*@Test
		public void deleteProductTestCase() {
			category.setId(33);
			Assert.assertEquals("Delete Product test case", true, categoryDAO.delete(category));
		}*/
		
		//Get Category By ID
		/*@Test
		public void getByIdTest(){
			category = categoryDAO.get(1);
			Assert.assertEquals("This is valid!",category.getId(), categoryDAO.get(1).getId());
		}*/
		
		//To Fetch All Product From ProductTable
		/*@Test
		public void getAllCategoryTest(){
			int size = categoryDAO.list().size();
			Assert.assertEquals(4, size);
		}*/
		
		//Update ProductTable
		/*@Test
		public void updateCategoryTestCase(){
			category = categoryDAO.get(1);
			Assert.assertEquals(true, categoryDAO.saveOrUpdate(category));
		}*/
}
