package com.witty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.IEventcreateService;
import com.wity.command.EventcreateCommand;

@Controller
public class Eventcreationcontroller {
	
	@Autowired
	@Qualifier("eventcreateService")
	public IEventcreateService eventcreateService;

	@RequestMapping("/eventcreation.do")
	public ModelAndView getHomePage(@ModelAttribute("eventcreateCommand")EventcreateCommand eventcreateCommand){
		return new ModelAndView("eventcreation");
	}
	
	@RequestMapping(value="/create.do" ,method=RequestMethod.POST)
	public ModelAndView authoriseUser(@ModelAttribute("eventcreateCommand")EventcreateCommand eventcreateCommand){
		String EventName = eventcreateCommand.getEventname();
		int nopreq = eventcreateCommand.getNopreq();
		String ndate=eventcreateCommand.getnDate();
		String Empid=eventcreateCommand.getEmpid();
		String viewName = "eventcreation";
		if(eventcreateService.checkeventDetails(EventName,ndate,nopreq,Empid)){
			//eventcreateCommand.setEventStatus(true);
				viewName= "eventsuccess";
			
			}
			
		else{
			eventcreateCommand.setEventStatus(false);
		}
		
		return new ModelAndView(viewName);
	}
}
