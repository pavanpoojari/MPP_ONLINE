package com.niit.backend.test;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.User;

public class UserTestcase {

	@Autowired
	AnnotationConfigApplicationContext context;

	@Autowired
	static UserDAO userDAO;

	@Autowired
	static User user;

	// Annotation
	public UserTestcase() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.backend");
		context.refresh();

		user = (User) context.getBean("user");
		userDAO = (UserDAO) context.getBean("userDAO");
	}

	// Adding the User
	/*
	 * @Test public void createDeveloperTest() { // user.setId(3);
	 * user.setUsername("test123"); user.setEmailid("test@test.com");
	 * user.setFirstlastname("test1 test"); user.setGender("Male");
	 * user.setPassword("test"); user.setPhonenumber("9999944455");
	 * user.setRole("USER"); user.setEnable(false); Assert.assertEquals(
	 * "create test case", true, userDAO.create(user)); }
	 */

	// Delete UserTable
	@Test
	public void deleteUserTestCase() {
		user.setUserId(35);
		Assert.assertEquals("Delete Product test case", true, userDAO.delete(user));
	}

	// Get Product By ID
	/*
	 * @Test public void getByIdTest() { user = userDAO.get(35);
	 * Assert.assertEquals("This is valid!", user.getId(),
	 * userDAO.get(35).getId()); }
	 */

	// Update UserTable
	/*
	 * @Test public void updateUserTest(){ user = userDAO.get(35);
	 * user.setEnable(true); user.setRole("ADMIN"); Assert.assertEquals(true,
	 * userDAO.saveOrUpdate(user)); }
	 */
}
