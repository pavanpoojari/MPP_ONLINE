package com.niit.backend.test;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.DAO.DeveloperDAO;
import com.niit.backend.entity.Developer;

public class DeveloperTestcase {

	@Autowired
	static AnnotationConfigApplicationContext context;

	@Autowired
	static Developer developer;

	@Autowired
	static DeveloperDAO developerDAO;

	// Annotation
	public DeveloperTestcase() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.backend");
		context.refresh();

		developer = (Developer) context.getBean("developer");
		developerDAO = (DeveloperDAO) context.getBean("developerDAO");
	}

	// Adding the Developer
	/*
	 * @Test public void createDeveloperTest() { developer.setName("testet");
	 * developer.setEmail("tr@gmail.com"); developer.setPhonenumber("80808");
	 * Assert.assertEquals("create test case",true,
	 * developerDAO.create(developer)); }
	 */

	// Get Product By ID
	/*
	 * @Test public void getByIdTest(){ developer = developerDAO.get(1);
	 * Assert.assertEquals("This is valid!",developer.getId(),
	 * developerDAO.get(1).getId()); }
	 */

	// Delete CategoryTable
	/*@Test
	public void deleteDeveloperTestCase() {
		developer.setId(33);
		Assert.assertEquals("Delete Product test case", true, developerDAO.delete(developer));
	}*/

	// Update ProductTable
	@Test
	public void updateDeveloperTestCase() {
		developer = developerDAO.get(1);
		Assert.assertEquals(true, developerDAO.saveOrUpdate(developer));
	}
	
}
