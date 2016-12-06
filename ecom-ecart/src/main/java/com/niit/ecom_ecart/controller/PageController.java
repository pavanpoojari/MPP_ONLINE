package com.niit.ecom_ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	@RequestMapping(value = { "/", "/home", "/index", "/default" })
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
}
