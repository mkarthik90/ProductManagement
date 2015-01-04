package com.witty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.IRegService;
import com.witty.service.RegService;
import com.wity.command.LoginCommand;
import com.wity.command.Regcommand;

@Controller
public class RegController {

	@Autowired
	@Qualifier("regService")
	public IRegService service;

	public void setService(RegService regservice) {
		this.service = regservice;
	}

	/*
	 * @RequestMapping(value="/registration.do") public String
	 * registration(Model model,Regcommand regcommand){
	 * model.addAttribute("regcommand", regcommand); return "registration";
	 */

	// }
	@RequestMapping("/registrationPage")
	public ModelAndView getregistrationPage(
			@ModelAttribute("loginCommand") LoginCommand loginCommand) {
		return new ModelAndView("registrationPage");
	}

	@RequestMapping("/registrationsuccess")
	public String registrationsuccess(Model model, Regcommand regcommand) {
		String Username = regcommand.getUsername();
		String FirstName = regcommand.getFirstName();
		String LastName = regcommand.getLastName();
		String Email = regcommand.getEmail();
		String EmpId = regcommand.getEmpId();
		String Password = regcommand.getPassword();
		model.addAttribute("regcommand", regcommand);
		service.addEmployee(EmpId,Username,Email,FirstName,LastName,Password);
		return "registrationsuccess";
	}

	@RequestMapping(value = "/registration")
	public ModelAndView getRegistrationPage(
			@ModelAttribute("regcommand") Regcommand regcommand) {
		String Username = regcommand.getUsername();
		String FirstName = regcommand.getFirstName();
		String LastName = regcommand.getLastName();
		String Email = regcommand.getEmail();
		String EmpId = regcommand.getEmpId();
		String Password = regcommand.getPassword();
		String viewName = "Register";
		return new ModelAndView("registration", "Regcommand", new Regcommand());
	}
	// @RequestMapping("/registrationsuccess")
	// public ModelAndView
	// registrationSuccess(@ModelAttribute("regcommand")Regcommand regcommand){
	// return new ModelAndView("registrationsuccess");
	// }

}