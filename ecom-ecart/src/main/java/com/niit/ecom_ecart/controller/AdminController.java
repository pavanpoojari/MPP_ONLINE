package com.niit.ecom_ecart.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Developer developer;
	
	@Autowired
	private DeveloperDAO developerDAO;

	@Autowired
	private HttpServletRequest request;

	
	
	/* Product */
	boolean flag = false;

	@RequestMapping(value = "/AddProduct")
	public ModelAndView AddProduct(	@RequestParam(value="op", required=false) String operation, 
									@RequestParam(value = "status", required=false) String status,
									@RequestParam(value = "id", required=false) String id) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("product", new Product());
		mv.addObject("title", "Add Product");
		mv.addObject("products", productDAO.list());
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("developers", developerDAO.list());
		mv.addObject("ifAdminClickedAddProduct", true);
		return mv;
	}
	
	//Image Upload
	@RequestMapping(value = { "/saveProduct" }, method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute Product product, HttpServletRequest request) {
		if (product.getProductId() == 0) {	
			flag = productDAO.create(product);
			if (flag == true) {
				if(!product.getImage().getOriginalFilename().equals("")){
					product.setImageUrl(uploadImage(product));
				}
				return "redirect:/admin/AddProduct?op=add&status=success";
			} else {
				return "redirect:/admin/AddProduct?op=add&status=fail";
			}
		} else {
			flag = productDAO.saveOrUpdate(product);
			if (flag == true) {
				if(!product.getImage().getOriginalFilename().equals("")){
					product.setImageUrl(uploadImage(product));
				}
				return "redirect:/admin/AddProduct?op=update&status=success";
			} else {
				return "redirect:/admin/AddProduct?op=update&status=fail";
			}
		}
	}
	
	@RequestMapping(value = { "/edit/product/{id}" }, method = RequestMethod.GET)
	public ModelAndView updateProduct(@ModelAttribute Product product) {
		ModelAndView mv = new ModelAndView("page");
		product = productDAO.get(product.getProductId());
		mv.addObject("product", product);
		mv.addObject("title", "Update Product");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("products", productDAO.list());
		mv.addObject("developers", developerDAO.list());
		mv.addObject("ifAdminClickedUpdateProduct", true);
		return mv;
	}
	
	protected String uploadImage(Product product) {
		MultipartFile imageFile = product.getImage();
		String folderToUpload = "/resources/images/product";
		
		String fileName = imageFile.getOriginalFilename();
		String realPath = request.getServletContext().getRealPath(folderToUpload);
		if (!new File(realPath).exists()) {
			new File(realPath).mkdirs();
		}

		String filePath = realPath + File.separator + product.getProductId() + ".png";
		File destination = new File(filePath);
		try {
			imageFile.transferTo(destination);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileName;
	}
	//End Of Image Upload
	
	@RequestMapping(value = { "/delete/product/{id}" }, method = RequestMethod.GET)
	public String deleteProduct(@PathVariable int id) {
		product = productDAO.get(id);
		flag = productDAO.delete(product);
		if (flag == true) {
			return "redirect:/admin/AddProduct?op=delete&status=success&id=" + id;
		} else {
			return "redirect:/admin/AddProduct?op=delete&status=fail&id=" + id;
		}
	}
	/* End Of Product */
	/* End of the loading product page */
	
	/* Developer */
	@RequestMapping(value = "/AddDeveloper")
	public ModelAndView AddDeveloper() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("developer", new Developer());
		mv.addObject("title", "Add Developer");
		mv.addObject("developers", developerDAO.list());
		mv.addObject("ifAdminClickedAddDeveloper", true);
		return mv;
	}

	@RequestMapping(value = { "/edit/developer/{id}" }, method = RequestMethod.GET)
	public ModelAndView updateDeveloper(@ModelAttribute Developer developer) {
		ModelAndView mv = new ModelAndView("page");
		developer = developerDAO.get(developer.getId());
		mv.addObject("developer", developer);
		mv.addObject("title", "Update Developer");
		mv.addObject("ifAdminClickedUpdateDeveloper", true);
		return mv;
	}

	@RequestMapping(value = { "/saveDeveloper" }, method = RequestMethod.POST)
	public String saveDeveloper(@ModelAttribute Developer developer) {
		ModelAndView mv = new ModelAndView("page");
		if (developer.getId() == 0) {
			developerDAO.create(developer);
			mv.addObject("title", "Add Developer");
			mv.addObject("ifAdminClickedAddDeveloper", true);
		} else {
			developerDAO.saveOrUpdate(developer);
		}
		return "redirect:/admin/AddDeveloper";
	}

	@RequestMapping(value = { "/delete/developer/{id}" }, method = RequestMethod.GET)
	public String deleteDeveloper(@PathVariable int id) {
		developer = developerDAO.get(id);
		developerDAO.delete(developer);
		return "redirect:/admin/AddDeveloper";
	}
	/* End Of Developer */

	/* Category */
	@RequestMapping(value = "/AddCategory")
	public ModelAndView AddCategory() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("category", new Category());
		mv.addObject("title", "Add Category");
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("ifAdminClickedAddCategory", true);
		return mv;
	}

	@RequestMapping(value = { "/edit/category/{id}" }, method = RequestMethod.GET)
	public ModelAndView updateCategory(@ModelAttribute Category category) {
		ModelAndView mv = new ModelAndView("page");
		category = categoryDAO.get(category.getId());
		mv.addObject("category", category);
		mv.addObject("title", "Update Category");
		mv.addObject("ifAdminClickedUpdateCategory", true);
		return mv;
	}

	@RequestMapping(value = { "/saveCategory" }, method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute Category category) {
		ModelAndView mv = new ModelAndView("page");
		if (category.getId() == 0) {
			categoryDAO.create(category);
			mv.addObject("title", "Add Category");
			mv.addObject("ifAdminClickedAddCategory", true);
		} else {
			categoryDAO.saveOrUpdate(category);
		}
		return "redirect:/admin/AddCategory";
	}

	@RequestMapping(value = { "/delete/category/{id}" }, method = RequestMethod.GET)
	public String deleteCategory(@PathVariable int id) {
		category = categoryDAO.get(id);
		categoryDAO.delete(category);
		return "redirect:/admin/AddCategory";
	}
	/* End Of Category */

}
