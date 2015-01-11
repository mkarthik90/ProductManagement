package com.witty.controller;
import java.io.PrintWriter;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.witty.service.EventService;
import com.witty.service.IEventService;

import com.wity.command.EventCommand;


import static java.lang.System.out;
@Controller
public class EventController {

	@Autowired
	@Qualifier("eventService")
	public IEventService service;
	public void setService(EventService eventservice) {
		this.service = eventservice;
	}
	@RequestMapping("/eventpage")
	public ModelAndView geteventpage(@ModelAttribute("eventCommand")EventCommand eventCommand){
		return new ModelAndView("eventpage");
	}
	
	@RequestMapping("/eventemployee")
	public ModelAndView ModelAndView(@ModelAttribute("eventCommand")EventCommand eventCommand){
		return new ModelAndView("eventpage");
	}
	
	
}
