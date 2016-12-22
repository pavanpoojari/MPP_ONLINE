package com.niit.ecom_ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
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
		mv.addObject("title", "About");
		mv.addObject("ifUserClickedAbout", true);
		return mv;
	}
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact");
		mv.addObject("ifUserClickedContact", true);
		return mv;
	}
	
	/* for loading product page */
	@RequestMapping(value = "/product/all")
	public ModelAndView productList() {

		ModelAndView mv = new ModelAndView("index");
		mv.addObject("title", "Product List");
		mv.addObject("ifUserClickedProductList", "ProductList");
		return mv;
	}
	
	@RequestMapping(value = "/product/{id}")
	public ModelAndView product(@PathVariable("id") int id) {

		ModelAndView mv = new ModelAndView("index");
		mv.addObject("title", "");
		mv.addObject("id", id);
		mv.addObject("ifUserClickedProduct", true);
		return mv;
	}
	/* End of the loading product page */
}