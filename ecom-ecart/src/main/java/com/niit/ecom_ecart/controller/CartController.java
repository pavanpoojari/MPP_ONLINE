package com.niit.ecom_ecart.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.CartDAO;
import com.niit.backend.DAO.CartItemDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Cart;
import com.niit.backend.entity.CartItem;
import com.niit.backend.entity.Product;
import com.niit.backend.entity.User;

@Controller
@RequestMapping(value = { "/user" })
public class CartController {

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User user;

	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private Cart cart;

	@Autowired
	private CartItemDAO cartItemDAO;
	@Autowired
	private CartItem cartItem;

	@RequestMapping(value = "/cart")
	public ModelAndView cart(Principal principal) {
		ModelAndView mv = new ModelAndView("page");
		user = userDAO.getByuserName(principal.getName());
		mv.addObject("cartItem", new CartItem());
		mv.addObject("cartItems", cartItemDAO.list(user.getCart().getCartId()));
		mv.addObject("cart", cartDAO.get(user.getCart().getCartId()));

		mv.addObject("title", "Cart");
		mv.addObject("ifUserClickedCart", true);
		return mv;
	}
	
}
