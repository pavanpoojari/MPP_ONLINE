package com.niit.ecom_ecart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value={"/user"})
public class UserController {

	@RequestMapping(value = "/userprofile")
	public ModelAndView Profile() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "User Profile");
		mv.addObject("ifUserClickedProfile", true);
		return mv;
	}

}
