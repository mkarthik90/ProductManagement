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
	String time=null;
	public boolean checkeventDetails(String Eventname, String ndate,int nopreq,String ntime,String place,String products,String returndate,String rtime)
	{       
		String date=ndate+" "+ntime;
		DateFormat df = new SimpleDateFormat("hh:mm:ss aa");
		DateFormat df2 = new SimpleDateFormat("HH:mm:ss");
		DateFormat df3=new SimpleDateFormat("yyyy-MM-dd");
		DateFormat df4=new SimpleDateFormat("dd-MM-yyyy");
		
		Date d=null;
    	try {
    		System.out.println("upd3 org"+ndate);
    		System.out.println("upd3 org"+returndate);
    		d= df.parse(ntime);
    		Date t=df.parse(rtime);
    		time = df2.format(d);
    		String rtimes=df2.format(t);
    		
    		Date ndates=df4.parse(ndate);
    		String ndate1=df3.format(ndates);
    		Date rdates=df4.parse(returndate);
    		
    		String returndate1=df3.format(rdates);
    		
    		System.out.println("upd1"+time);
    		System.out.println("upd2"+rtimes);
    		System.out.println("upd3"+ndate1);
    		System.out.println("upd3"+returndate1);
    		
    		
    	//String d=ndate;
	
	
		if(eventcreateDAO.geteventDetails(Eventname,ndate1,time,nopreq,place)==0)
		{
			
		eventcreateDAO.seteventDetails(Eventname,ndate1,time,returndate1,rtimes,nopreq,place,products);
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
	
	
}
