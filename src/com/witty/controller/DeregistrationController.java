package com.witty.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.IDeregistrService;
import com.wity.command.DeregistrCommand;
import com.witty.service.Emplistservice;

@Controller
@Scope("session")
public class DeregistrationController  {
	
	
	@Autowired
	@Qualifier("employlistservice")
	public Emplistservice listservice;
	
	public void setListservice(Emplistservice listservice) {
		this.listservice = listservice;
	}
	
	@Autowired
	@Qualifier("deregistrService")
	public IDeregistrService deregistrService;
	
	

	public void setDeregistrService(IDeregistrService deregistrService) {
		this.deregistrService = deregistrService;
	}

	@RequestMapping("/deregistration.do")
	public ModelAndView getderegistrPage(@ModelAttribute("deregistrCommand")DeregistrCommand deregistrCommand){
		Map referenceData= new HashMap();
		List<DeregistrCommand> newlist=new ArrayList<DeregistrCommand>();
		newlist.addAll((listservice.deregistrDAO.getemplistdetails()));
		referenceData.put("emplist",newlist);
		return new ModelAndView("deregistr",referenceData);
	}
	@RequestMapping("/confirmation.do")
	public ModelAndView getconfirmationPage(@ModelAttribute("deregistrCommand")DeregistrCommand deregistrCommand ,ModelMap model){
		String emp_id = deregistrCommand.getEmpid();
		System.out.println(emp_id);
		String username=deregistrService.getusernameDetails(emp_id);
		deregistrCommand.setUserName(username);
		System.out.println("in ctrl 1"+username);
		model.addAttribute("empid",emp_id);
		model.addAttribute("username",username);
		return new ModelAndView("proceederegistration");
	}
	
	@RequestMapping("/deregistr.do")
	public ModelAndView deregistrprocess(@ModelAttribute("deregistrCommand")DeregistrCommand deregistrCommand ,ModelMap model){
		String emp_id = deregistrCommand.getEmpid1();
				System.out.println("emplooy"+emp_id);
		String userName = deregistrCommand.getUserName1();
				System.out.println("user"+userName);
		String viewName = "deregistr";
		
			int remprod=deregistrService.getproddetails(emp_id);
			if(deregistrService.checkprodDetails(emp_id))
			{
				model.addAttribute("empid",emp_id);
				model.addAttribute("username",userName);
				viewName= "deregistrsuccesspage";
			}
			else{
				model.addAttribute("remprod", remprod);
				viewName = "deregistrfailurepage";
			}
			
		
		
		//deregistrCommand.setDeregistrStatus(true);
		return new ModelAndView(viewName);
	}
}


