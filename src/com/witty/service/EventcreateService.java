package com.witty.service;

//import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.witty.dao.IEventcreateDAO;

@Service("eventcreateService")
public class EventcreateService implements IEventcreateService {
	
	@Autowired
	@Qualifier("eventcreateDAO")
	public IEventcreateDAO eventcreateDAO;

	public boolean checkeventDetails(String Eventname, String ndate,int nopreq,String Empid)
	{       
    
 
    try{
    
	String date=ndate;

		if(eventcreateDAO.geteventDetails(Eventname,date,nopreq,Empid)==0)
		{
			
		eventcreateDAO.seteventDetails(Eventname,date,nopreq,Empid);
		return true;
	}
	
    }
    catch ( Exception ex ){
        System.out.println(ex);
    }
    return false;
	}
	
}
