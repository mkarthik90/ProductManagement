package com.witty.dao;

import java.util.List;

import com.wity.command.EventcreateCommand;

//import java.util.Date;
public interface IEventcreateDAO {

	public int geteventDetails(String Eventname,String ndate,String time,int nopreq,String place);
	public void seteventDetails(String Eventname,String ndate,String time,int nopreq,String place,String products);
	public List<EventcreateCommand> getempdetails();
}
