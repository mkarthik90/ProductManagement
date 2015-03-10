package com.witty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.ILoginService;
import com.wity.command.LoginCommand;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("loginService")
	public ILoginService loginService;

	@RequestMapping("/application.do")
	public ModelAndView getHomePage(@ModelAttribute("loginCommand")LoginCommand loginCommand){
		return new ModelAndView("login");
	}
	
	
	@RequestMapping("/login.do")
	public ModelAndView authoriseUser(@ModelAttribute("loginCommand")LoginCommand loginCommand,Model model){
		String userName = loginCommand.getUserName();
		String password = loginCommand.getPassword();
		String viewName = "login";
		if(loginService.checkLoginDetails(userName,password)){
			
			viewName = "homePage";
			model.addAttribute("user", userName);
		}
		else{
			loginCommand.setLoginStatus(false);
		}
		
		
		return new ModelAndView(viewName,"string",userName);
	}
	@RequestMapping("/homepage.do")
	public ModelAndView getHomepage(@ModelAttribute("loginCommand")LoginCommand loginCommand){
		return new ModelAndView("homePage");
	}
}
