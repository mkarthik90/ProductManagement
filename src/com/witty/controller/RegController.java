package com.witty.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.dao.DataFactory;
import com.witty.service.IRegService;
import com.witty.service.RegService;
import com.wity.command.EventCommand;
import com.wity.command.LoginCommand;
import com.wity.command.Regcommand;

import static java.lang.System.out;
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
	public ModelAndView registrationsuccess(@ModelAttribute("regcommand") Regcommand regcommand,BindingResult result ,ModelMap model) {
		
		String Username = regcommand.getUsername();
		String FirstName = regcommand.getFirstName();
		String LastName = regcommand.getLastName();
		String Email = regcommand.getEmail();
		
		String Password = regcommand.getPassword();
		System.out.println(Username+Email+FirstName+LastName+Password);
		if(result.hasErrors()){
		
		
		
			//model.addAttribute("regcommand", regcommand);
		return new ModelAndView("registration");}
		String viewName="registration";
		if(service.checkemployeeDetails(Username,Email)){
			

		 int empid=service.addEmployee(Username,Email,FirstName,LastName,Password);
		 model.addAttribute("Username", Username);
		 model.addAttribute("FirstName", FirstName);
		 model.addAttribute("LastName", LastName);
		 model.addAttribute("Email", Email);
		 model.addAttribute("Password", Password);
		 model.addAttribute("empid", empid);
		return new ModelAndView( "registrationsuccess");
		}
		else{
			regcommand.setEventStatus(false);
			
		}
		return new ModelAndView(viewName);
	}

	@RequestMapping(value = "/registration")
	public ModelAndView getRegistrationPage(
			@ModelAttribute("regcommand") Regcommand regcommand) {
		String Username = regcommand.getUsername();
		String FirstName = regcommand.getFirstName();
		String LastName = regcommand.getLastName();
		String Email = regcommand.getEmail();
		
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