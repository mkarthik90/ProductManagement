package com.witty.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

//import jdk.nashorn.internal.ir.RuntimeNode.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.servlet.ModelAndView;











import com.witty.service.EventEmployeeRegisterService;
import com.witty.service.EventService;
import com.witty.service.EventServiceProduct;
import com.witty.service.IEventService;
import com.wity.command.EventCommand;




@Controller
public class EventController {

	@Autowired
	@Qualifier("eventService")
	public EventService service;
	@Qualifier("eventServiceProduct")
	public EventServiceProduct evservice;
	
	public void setService(EventService service) {
		this.service = service;
	}
	public void setService(EventServiceProduct evservice){
		this.evservice=evservice;
	}
	@Autowired
	@Qualifier("eventEmployeeRegisterService")
	public EventEmployeeRegisterService eventservice;
	
	public void setService(EventEmployeeRegisterService eventservice)
	{
		this.eventservice=eventservice;
	}
	@RequestMapping("/eventpage1")
	public ModelAndView geteventpage(@ModelAttribute("eventCommand")EventCommand eventCommand){
		return new ModelAndView("eventpage");
	}
	@RequestMapping("/employeelist.do")
	public ModelAndView getemployeelistPage(
			@ModelAttribute("eventCommand")EventCommand eventCommand) {
		Map referenceData= new HashMap();
		List<EventCommand> newlist=new ArrayList<EventCommand>();
		List<EventCommand> newlist1=new ArrayList<EventCommand>();
		List<EventCommand> newlist2=new ArrayList<EventCommand>();
		newlist2.addAll(service.eventManagementDAO.showeventname());
		newlist.addAll((service.eventManagementDAO.showEmployee()));
		newlist1.addAll(service.eventManagementDAO.showproductname());
		referenceData.put("eventlist", newlist2);
		referenceData.put("employeeList1",newlist1);
		referenceData.put("employeelist",newlist);
		return new ModelAndView("employeelist",referenceData);
	}

	@RequestMapping("/eventlist.do")
	public ModelAndView geteventlistPage(
			@ModelAttribute("eventCommand")EventCommand eventCommand) {
		Map referenceData= new HashMap();
		List<EventCommand> newlist=new ArrayList<EventCommand>();
		List<EventCommand> newlist1=new ArrayList<EventCommand>();
		List<EventCommand> newlist2=new ArrayList<EventCommand>();
		newlist2.addAll(service.eventManagementDAO.showeventname());
		newlist.addAll((service.eventManagementDAO.showEmployee()));
		newlist1.addAll(service.eventManagementDAO.showproductname());
		referenceData.put("eventlist", newlist2);
		referenceData.put("employeeList1",newlist1);
		referenceData.put("employeelist",newlist);
		return new ModelAndView("eventlist",referenceData);
	}
	@RequestMapping("/eventmodify.do")
	public ModelAndView geteventmodifypage(
			@ModelAttribute("eventCommand")EventCommand eventCommand) {
		Map referenceData= new HashMap();
		List<EventCommand> newlist=new ArrayList<EventCommand>();
		List<EventCommand> newlist1=new ArrayList<EventCommand>();
		List<EventCommand> newlist2=new ArrayList<EventCommand>();
		newlist2.addAll(service.eventManagementDAO.showeventname());
		newlist.addAll((service.eventManagementDAO.showEmployee()));
		newlist1.addAll(service.eventManagementDAO.showproductname());
		referenceData.put("eventlist", newlist2);
		referenceData.put("employeeList1",newlist1);
		referenceData.put("employeelist",newlist);
		return new ModelAndView("eventmodify",referenceData);
	}
	@RequestMapping(value="/eventemployee.do" , method=RequestMethod.GET)
	public ModelAndView getemployeeassign(@ModelAttribute("eventCommand")EventCommand eventCommand){
		Map referenceData= new HashMap();
		List<EventCommand> newlist=new ArrayList<EventCommand>();
		List<EventCommand> newlist1=new ArrayList<EventCommand>();
		List<EventCommand> newlist2=new ArrayList<EventCommand>();
		//List<String> nw=new ArrayList<String>();
		//nw.add("hello");
		
	//EventCommand ev=new EventCommand();
	//String employee=ev.getemployee();
		//referenceData.put("EmployeeList",newlist);
		
		
		//LinkedHashMap<String,String> Employee=new LinkedHashMap<String,String>();
		//Employee.put("Test", "Test");
		newlist2.addAll(service.eventManagementDAO.showeventname());
		newlist.addAll((service.eventManagementDAO.showEmployee()));
		newlist1.addAll(service.eventManagementDAO.showproductname());
		referenceData.put("eventlist", newlist2);
		referenceData.put("employeeList1",newlist1);
		referenceData.put("employeelist",newlist);
		
		//referenceData.put("employeelist", nw);
		//System.out.println(employee+"in controller");
		//Map<String,String> employee= new LinkedHashMap<String,String>();
		return new ModelAndView("EventEmployee",referenceData);
	}
	
	@RequestMapping(value="/eventassign.do",method=RequestMethod.POST)
	public ModelAndView ModelAndView(@ModelAttribute("eventCommand")EventCommand eventCommand,BindingResult result,ModelMap model){
	//String[] employee=eventCommand.getEmployee().split(":");
	//String empid=employee[0];
	//String Products=employee[1];
	//String employeename=employee[2];
	//String[] eventname=employee[3].split(",");
		
	/*String Eventname=eventCommand.getEventname();
		String employee=eventCommand.getEmployee();
	String Products=eventCommand.getProducts();
	String empid=eventCommand.getEmpid();
	String employee1=eventCommand.getEmployeename();*/
	/*String Eventname=eventCommand.getEventname();
	String employee=eventCommand.getEmployee();
	String Products=eventCommand.getProducts();
	String empid=eventCommand.getEmpid();
	String test=eventCommand.getTest();
	String employeename=eventCommand.getEmployeename();
    String empidnew=eventCommand.getEmpidnew();*/
	/*System.out.println("\n"+Eventname);
	System.out.println("\n"+empid);
	System.out.println("\n"+employeename);
	System.out.println("\n"+Products);
	System.out.println("\n"+employee);*/
	//newString empl=eventCommand.getEmployee();
	//take employee id from employee
    //products no problem
    
	//newString[] empidnew=empid.split(":");
//new	String empidnewvalue=empidnew[0];
//new	String empidnew1=eventCommand.getEmpidnew();
  //  System.out.println(Eventname+" s "+employee+" s "+Products+" s "+empid+" s "+test+" s "+employeename+" s "+empidnew);
	//System.out.println(" s "+Eventname + " s "+ Products + " sss "+ empid+" ssss "+employee1);
	//new System.out.println("\n"+empidnew1);
	//new System.out.println(empid);
	//String value=eventCommand.getEmployeename().toString();
	//System.out.println(value);
/*Eventname="testevent";
employee1="empl";
Products="prod";
emp0id="1";*/
		//String emp=eventCommand.getEmployee();
		//System.out.println(emp);
   //new String[] employee=eventCommand.getEmployee().split(":");
		//newString empid=employee[0];
		//newString Products=eventCommand.getProducts();
	
		//newString[] employee1=eventCommand.getEmployee().split(",");
		//newString employeename=employee1[1];
		//newString Eventname=eventCommand.getEventname();
	
	String employeename=eventCommand.getEmployee();
	String Eventname=eventCommand.getEventname();
	String Products=eventCommand.getProducts();
	String[] empidarray=eventCommand.getEmpid().split(":");
	String empid=empidarray[0];
	System.out.println("Eventname :"+Eventname+" "+"Employeename "+ employeename+" "+"products: "+ Products+" "+"empid"+empid);
	//new eventservice.addeventservice(Eventname,employeename,Products,empid);
	
	 model.addAttribute("Eventname", Eventname);
	 model.addAttribute("empid", empid);
	 model.addAttribute("employeename", employeename);
	 model.addAttribute("Products",Products);
		 return new ModelAndView("welcome");
	}
	}

