package com.niit.ecom_ecart.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@Autowired
	HttpSession httpSession;

	@RequestMapping(value = "/cart")
	public ModelAndView cart(Principal principal) {
		ModelAndView mv = new ModelAndView("page");
		user = userDAO.getByuserName(principal.getName());
		mv.addObject("cartItem", new CartItem());
		
		List<CartItem> ci = cartItemDAO.list(user.getCart().getCartId());
		httpSession.setAttribute("noofcartItems", ci.size());
		
		mv.addObject("cartItems", cartItemDAO.list(user.getCart().getCartId()));
		mv.addObject("cart", cartDAO.get(user.getCart().getCartId()));
		mv.addObject("title", "Cart");
		mv.addObject("ifUserClickedCart", true);
		return mv;
	}

	@RequestMapping(value = { "/cart/add/{id}" })
	public String addCart(@PathVariable(name = "id") int id, Principal principal) {
		user = userDAO.getByuserName(principal.getName());
		product = productDAO.get(id);
		Set<CartItem> cartItems = new HashSet<>();
		cart = user.getCart();

		boolean flag = cartItemDAO.existingCartItem(product.getProductId(), cart.getCartId());

		if (flag != true) {
			cartItem.setProduct(product);
			cartItem.setPrice(product.getPrice());
			cartItem.setTotal(cartItem.getTotal());
			cartItems.add(cartItem);
			cart.setCartItems(cartItems);
			cart.setUser(user);
			cartItem.setCart(cart);
			productDAO.saveOrUpdate(product);
			cartItemDAO.create(cartItem);
			cartDAO.saveOrUpdateAgain(cart);
			cartDAO.saveOrUpdate(cart);
			return "redirect:/user/cart?op=add&status=success";
		} else {

			return "redirect:/user/cart?op=add&status=failure";
		}
	}

	@RequestMapping(value = { "/cart/delete/{id}" })
	public String deleteCart(@PathVariable(name = "id", required = false) int id, Principal principal) {
		user = userDAO.getByuserName(principal.getName());
		cartItem = cartItemDAO.get(id);
		product = productDAO.get(cartItem.getProduct().getProductId());
		if (id != 0) {
			cart = cartDAO.get(user.getCart().getCartId());
			cartItemDAO.delete(cartItem);
			cartDAO.saveOrUpdateAgain(cart);
			cartDAO.saveOrUpdate(cart);
			return "redirect:/user/cart?op=delete&status=success";
		} else {
			return "redirect:/user/cart?op=delete&status=failure";
		}
	}

	/*
	 * @RequestMapping(value = { "/cart/update" }, method = RequestMethod.POST)
	 * public String updateCart(@ModelAttribute CartItem cartItem,
	 * HttpServletRequest request){ return null; }
	 */
}
