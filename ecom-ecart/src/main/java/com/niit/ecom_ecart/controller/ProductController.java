package com.niit.ecom_ecart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.ProductDAO;

@Controller
@RequestMapping(value={"/product"})
public class ProductController {
	
	@Autowired
	private ProductDAO productDAO;

	/* for loading product page */
	@RequestMapping(value = "/all")
	public ModelAndView productList() {
		ModelAndView mv = new ModelAndView("page");
		/*
		 * To Fetch the All Product from DataBase
		 * */
		mv.addObject("title", "Product List");
		mv.addObject("ifUserClickedProductList", true);
		return mv;
	}
	
	@RequestMapping(value = "/{id}")
	public ModelAndView product(@PathVariable("id") int id) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Product");
		mv.addObject("product", productDAO.get(1));
		mv.addObject("ifUserClickedProduct", true);
		return mv;
	}
	/* End of the loading product page */
}
