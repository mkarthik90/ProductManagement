package com.witty.service;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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

	public boolean checkeventDetails(String Eventname, String ndate,int nopreq)
	{       
    
    DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
    try{
       Date date = df.parse(ndate);
        //String nwdate = df.format(date);
	

		if(eventcreateDAO.geteventDetails(Eventname,date,nopreq)==0)
		{
			//System.out.println(Eventname+ndate+nopreq);
		eventcreateDAO.seteventDetails(Eventname,date,nopreq);
		return true;
	}
	
    }
    catch ( Exception ex ){
        System.out.println(ex);
    }
    return false;
	}
	
}
