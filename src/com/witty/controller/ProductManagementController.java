package com.witty.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.wity.command.ProductManagementCommand;

@Controller
public class ProductManagementController {

	public ModelAndView handleOnLoad(@ModelAttribute("productManagementCommand")ProductManagementCommand productManagementCommand){
		
		return new ModelAndView("addProducts");
	}
}
