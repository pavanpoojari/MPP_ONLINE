package com.niit.ecom_ecart.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.User;

@Controller
@RequestMapping(value = { "/user" })
public class UserController {

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User user;

	@RequestMapping(value = "/userprofile")
	public ModelAndView Profile(Principal principal) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "User Profile");
		user = userDAO.getByuserName(principal.getName());
		mv.addObject("user", user);
		mv.addObject("ifUserClickedProfile", true);
		return mv;
	}
	
	@RequestMapping(value = "/purchasehistory")
	public ModelAndView purchaseHistory() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Purchased Histroy");
		mv.addObject("ifUserClickedpurchaseHistory", true);
		return mv;
	}

	@RequestMapping(value = "/billinghistory")
	public ModelAndView billingHistory() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Billing Histroy");
		mv.addObject("ifUserClickedbillingHistory", true);
		return mv;
	}

	@RequestMapping(value = "/wishlist")
	public ModelAndView wishList() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "My Wishlist");
		mv.addObject("ifUserClickedmyWishlist", true);
		return mv;
	}

	@RequestMapping(value = { "/edit/billinginformation/{id}" }, method = RequestMethod.GET)
	public ModelAndView editUser(@ModelAttribute User user, @PathVariable(name = "id", required = false) int id) {
		ModelAndView mv = new ModelAndView("page");
		user = userDAO.get(id);
		mv.addObject("user", user);
		
		mv.addObject("title", "Edit User Profile");
		mv.addObject("ifUserClickedUpdateProfile", true);
		return mv;
	}
}
