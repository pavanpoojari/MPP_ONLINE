package com.niit.ecom_ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
/*@RequestMapping(value={"/cart"})*/
public class CartController {
	
	@RequestMapping(value = "/cart")
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Cart");
		mv.addObject("ifUserClickedCart", true);
		return mv;
	}
}
