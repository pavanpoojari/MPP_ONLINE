package com.niit.ecom_ecart.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView loign(@RequestParam(value = "login", required = false) String login) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Login");
		mv.addObject("ifUserClickedLogin", true);
		
		return mv;
	}
	
}