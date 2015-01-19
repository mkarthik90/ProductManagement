package com.witty.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.witty.service.IEventcreateService;
import com.witty.service.Empservice;
import com.wity.command.EventcreateCommand;

@Controller
public class Eventcreationcontroller {
	
	@Autowired
	@Qualifier("empservice")
	public Empservice service;
	
	public void setService(Empservice service) {
		this.service = service;
	}
	@Autowired
	@Qualifier("eventcreateService")
	public IEventcreateService eventcreateService;
	
	public void setService(IEventcreateService eventcreateService)
	{
		this.eventcreateService=eventcreateService;;
	}
	@RequestMapping("/eventpage")
	public ModelAndView geteventpage(@ModelAttribute("eventcreateCommand")EventcreateCommand eventcreateCommand){
		return new ModelAndView("eventpage");
	}
	
	@RequestMapping("/eventcreation.do")
	public ModelAndView geteventcreatePage(@ModelAttribute("eventcreateCommand")EventcreateCommand eventcreateCommand){
		Map referenceData= new HashMap();
		List<EventcreateCommand> newlist=new ArrayList<EventcreateCommand>();
		newlist.addAll((service.eventcreateDAO.getempdetails()));
		referenceData.put("employeelist",newlist);
		return new ModelAndView("eventcreation",referenceData);
	}
	
	@RequestMapping(value="/create.do" ,method=RequestMethod.POST)
	public ModelAndView eventprocess(@ModelAttribute("eventcreateCommand")EventcreateCommand eventcreateCommand){
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
