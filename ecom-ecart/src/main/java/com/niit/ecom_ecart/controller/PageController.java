package com.niit.ecom_ecart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Product;
import com.niit.backend.entity.User;

@Controller
public class PageController {	
	
	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value = { "/", "/home", "/index", "/default" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("ifUserClickedHome", true);
		return mv;
	}
	
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("ifUserClickedAbout", true);
		return mv;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("ifUserClickedContact", true);
		return mv;
	}
	
	/*@RequestMapping(value = "/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("user", new User());
		mv.addObject("title", "Sign Up");
		mv.addObject("ifUserClickedSignup", true);
		return mv;
	}
	@RequestMapping(value = { "/saveUser" }, method = RequestMethod.POST)
	public String saveUser(@ModelAttribute User user) {
		ModelAndView mv = new ModelAndView("page");
		
		if (user.getUserId() == 0) {
			userDAO.create(user);
			mv.addObject("title", "Sign Up");
			mv.addObject("ifUserClickedSignup", true);
		}
		
		return "redirect:/login";
	}*/
	
	@RequestMapping(value = "/login")
	public ModelAndView loign(@RequestParam(value = "login", required = false) String login) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Login");
		mv.addObject("ifUserClickedLogin", true);
		
		return mv;
	}
	
	@RequestMapping(value = "/product/show/all")
	public ModelAndView allProducts(	) {
		ModelAndView mv = new ModelAndView("page");
		/*mv.addObject("product", new Product());*/
		mv.addObject("title", "Product List");
		/*mv.addObject("products", productDAO.list());*/
		mv.addObject("ifUserClickedProductList", true);
		return mv;
	}
}