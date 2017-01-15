package com.niit.ecom_ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value={"/admin"})
public class AdminController {
	
	@RequestMapping(value = "/panels")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Admin");
		mv.addObject("ifUserClickedAdmin", true);
		return mv;
	}
}
