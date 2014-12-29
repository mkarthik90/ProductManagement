package com.witty.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.witty.command.Regcommand;
import com.witty.service.RegService;
import com.witty.service.RegFun;

@Controller
public class HomeController{
	@Autowired
	private RegFun service;
	public void setService(RegService regservice){
		this.service=regservice;
	}
	@RequestMapping(value="/registration.do")
	public String registration(Model model,Regcommand regcommand){
		model.addAttribute("regcommand", regcommand);
		return "registration";
		
	} 
	@RequestMapping("/registrationsuccess")
	public String registrationsuccess(Model model,Regcommand regcommand)
	{
		model.addAttribute("regcommand", regcommand);
		service.addEmployee(regcommand);
		return "registrationsuccess";
	}
	//public ModelAndView getRegistrationPage(@ModelAttribute("regcommand")Regcommand regcommand){
		/*String userName = regcommand.getUsername();
		String firstName=regcommand.getFirstName();
		String lastName=regcommand.getLastName();
		String email=regcommand.getEmail();
		String empid=regcommand.getEmpId();
		String password = regcommand.getPassword();
		String viewName = "Register";*/
		//return new ModelAndView("registration");
	//}
	@RequestMapping("/registrationsuccess.do")
	public ModelAndView registrationSuccess(@ModelAttribute("regcommand")Regcommand regcommand){
		return new ModelAndView("registrationsuccess");
	}
	
	
}