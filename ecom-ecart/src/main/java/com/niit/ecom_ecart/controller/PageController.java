package com.niit.ecom_ecart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.ProductDAO;

@Controller
public class PageController {
	
	@Autowired
	private ProductDAO productDAO;
	
	
	
	@RequestMapping(value = { "/", "/home", "/index", "/default" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("ifUserClickedHome", true);
		return mv;
	}
	
	@RequestMapping(value = "/Admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Admin");
		mv.addObject("ifUserClickedAdmin", true);
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
	
	@RequestMapping(value = "/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sign Up");
		mv.addObject("ifUserClickedSignup", true);
		return mv;
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView loign() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Login");
		mv.addObject("ifUserClickedLogin", true);
		return mv;
	}
	
	@RequestMapping(value = "/cart")
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Cart");
		mv.addObject("ifUserClickedCart", true);
		return mv;
	}

	/* for loading product page */
	@RequestMapping(value = "/product/all")
	public ModelAndView productList() {
		ModelAndView mv = new ModelAndView("page");
		/*
		 * To Fetch the All Product from DataBase
		 * */
		mv.addObject("products",productDAO.list());
		
		mv.addObject("title", "Product List");
		mv.addObject("ifUserClickedProductList", true);
		return mv;
	}
	
	@RequestMapping(value = "/product/{id}")
	public ModelAndView product(@PathVariable("id") int id) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "");
		mv.addObject("id", id);
		mv.addObject("ifUserClickedProduct", true);
		return mv;
	}
	/* End of the loading product page */
}