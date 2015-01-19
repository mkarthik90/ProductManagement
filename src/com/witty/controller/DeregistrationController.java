package com.witty.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.IDeregistrService;
import com.wity.command.DeregistrCommand;
@Controller
public class DeregistrationController  {
	
	@Autowired
	@Qualifier("deregistrService")
	public IDeregistrService deregistrService;

	@RequestMapping("/deregistration.do")
	public ModelAndView getderegistrPage(@ModelAttribute("deregistrCommand")DeregistrCommand deregistrCommand){
		return new ModelAndView("deregistr");
	}
	
	@RequestMapping("/deregistr.do")
	public ModelAndView deregistrprocess(@ModelAttribute("deregistrCommand")DeregistrCommand deregistrCommand){
		String emp_id = deregistrCommand.getEmpid();
		String userName = deregistrCommand.getuserName();
		String viewName = "deregistr";
		if(deregistrService.checkregistrDetails(emp_id,userName)){
			if(deregistrService.checkprodDetails(emp_id,userName))
			{
				viewName= "successpage";
			}
			else{
				viewName = "Failurepage";
			}
			
		}
		else{
			deregistrCommand.setDeregistrStatus(false);
		}
		//deregistrCommand.setDeregistrStatus(true);
		return new ModelAndView(viewName);
	}
}


