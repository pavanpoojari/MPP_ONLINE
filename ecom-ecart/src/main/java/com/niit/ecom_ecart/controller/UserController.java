package com.niit.ecom_ecart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Developer;
import com.niit.backend.entity.Product;
import com.niit.backend.entity.User;

@Controller
@RequestMapping(value = { "/user" })
public class UserController {

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User user;

	@RequestMapping(value = "/userprofile")
	public ModelAndView Profile() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "User Profile");
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

	@RequestMapping(value = { "/edit/billinginformation" }, method = RequestMethod.GET)
	public ModelAndView editUser() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Edit User Profile");
		mv.addObject("ifUserClickedUpdateProfile", true);
		return mv;
	}
}
