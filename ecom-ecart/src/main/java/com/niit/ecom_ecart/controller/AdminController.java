package com.niit.ecom_ecart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.CategoryDAO;
import com.niit.backend.DAO.DeveloperDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.entity.Category;
import com.niit.backend.entity.Developer;
import com.niit.backend.entity.Product;

@Controller
@RequestMapping(value = { "/admin" })
public class AdminController {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private Product product;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	@Autowired
	private Developer developer;
	
	@Autowired
	private DeveloperDAO developerDAO;
	
	@RequestMapping(value = "/panels")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Admin");

		// To List All Product
		mv.addObject("products", productDAO.list());

		// To List All Category
		mv.addObject("categories", categoryDAO.list());

		// To List All Category
		mv.addObject("developers", developerDAO.list());

		mv.addObject("ifAdminClickedAdmin", true);
		return mv;
	}

	/*
	 * //To view list of the product
	 * 
	 * @RequestMapping(value = "/viewAll") public ModelAndView allproducts() {
	 * ModelAndView mv = new ModelAndView("page");
	 * 
	 * mv.addObject("title", "View all products"); mv.addObject("products",
	 * productDAO.list()); mv.addObject("ifAdminClickedViewAll", true); return
	 * mv; }
	 */

}
