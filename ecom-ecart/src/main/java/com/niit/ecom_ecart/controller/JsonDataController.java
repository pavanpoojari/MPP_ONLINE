package com.niit.ecom_ecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.entity.Product;

@RestController
public class JsonDataController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value ={"/product/all"})
	public @ResponseBody List<Product> allProduct(){
		return productDAO.list();
	}
}
