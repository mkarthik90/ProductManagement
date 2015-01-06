package com.witty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.ProductManagementService;
import com.wity.command.ProductManagementCommand;

@Controller
@Scope("session")
public class ProductManagementController {
	
	@Autowired
	@Qualifier("productManagementService")
	private ProductManagementService productManagementService;
	
	@ModelAttribute("productManagementCommand")
    private ProductManagementCommand getProductManagementCommand(){
        return new ProductManagementCommand();
    }	

	@RequestMapping("/produtManagement.do")
	public ModelAndView handleOnLoad(@ModelAttribute("productManagementCommand")ProductManagementCommand productManagementCommand){
		return new ModelAndView("addProducts");
	}
	
	@RequestMapping("/addProducts.do")
	public ModelAndView addProducts(@ModelAttribute("productManagementCommand")ProductManagementCommand productManagementCommand){
		productManagementService.addProductDetails(productManagementCommand.getProductDetails());
		return new ModelAndView("homePage");
	}
}
