package com.witty.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;
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
		/*the below mapping ll use at product list after modifications
		 * 
		 * 
		 */
		Map referenceData= new HashMap();
		List<EventcreateCommand> newlist=new ArrayList<EventcreateCommand>();
		newlist.addAll((service.eventcreateDAO.getempdetails()));
		referenceData.put("productslist",newlist);
		return new ModelAndView("eventcreationz",referenceData);
		//return new ModelAndView("eventcreationz");
	}
	
	@RequestMapping(value="/create.do" ,method=RequestMethod.POST)
	public ModelAndView eventprocess(@ModelAttribute("eventcreateCommand")EventcreateCommand eventcreateCommand ,ModelMap model){
		String mic=eventcreateCommand.getMic();
		System.out.println("mic new is"+mic);
		String speaker=eventcreateCommand.getSpeaker();
		System.out.println("speaker is"+speaker);
		String projector=eventcreateCommand.getProjector();
		System.out.println("projector is"+projector);
		String led=eventcreateCommand.getLed();
		System.out.println("led is"+led);
		
		String EventName = eventcreateCommand.getEventname();
		int nopreq = eventcreateCommand.getNopreq();
		String ndate=eventcreateCommand.getnDate();
		String place=eventcreateCommand.getPlace();
		String ntime=eventcreateCommand.getNtime();
		System.out.println("new time is"+ntime);
		
		
		//String Empid=eventcreateCommand.getEmpid();
		String viewName = "eventcreation";
		if(eventcreateService.checkeventDetails(EventName,ndate,nopreq,ntime,place)){
			//eventcreateCommand.setEventStatus(true);
			String dates=eventcreateService.getdatetime();
			model.addAttribute("EventName", EventName);
			//model.addAttribute("Empid", Empid);
			model.addAttribute("ndate", dates);
			model.addAttribute("nopreq",nopreq);
			model.addAttribute("place",place);
				viewName= "eventsuccess";
			
			}
		
			
		else{
			eventcreateCommand.setEventStatus(false);
		}
		
		return new ModelAndView(viewName);
    	
	}
    	
}
