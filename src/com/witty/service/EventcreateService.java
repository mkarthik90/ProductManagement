package com.witty.service;

//import org.springframework.format.annotation.DateTimeFormat;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;
import com.witty.dao.IEventcreateDAO;

@Service("eventcreateService")
public class EventcreateService implements IEventcreateService {
	
	@Autowired
	@Qualifier("eventcreateDAO")
	public IEventcreateDAO eventcreateDAO;
	String datetime=null;
	public boolean checkeventDetails(String Eventname, String ndate,int nopreq,String ntime,String place)
	{       
		String date=ndate+" "+ntime;
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss aa");
		DateFormat df2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
		Date d=null;
    	try {
    		
    		d= df.parse(date);
    		datetime = df2.format(d);
    		System.out.println("upd"+datetime);
    		
    	//String d=ndate;
	
	
		if(eventcreateDAO.geteventDetails(Eventname,datetime,nopreq,place)==0)
		{
			
		eventcreateDAO.seteventDetails(Eventname,datetime,nopreq,place);
		return true;
	}}
    	//catch (ParseException e) {
    	//       	    e.printStackTrace();
    	//} catch (java.text.ParseException e) {
		//	// TODO Auto-generated catch block
		//	e.printStackTrace();
		//}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
	
    	 
    return false;
	}
	public String getdatetime()
	{
		return datetime;
	}
	
}
