package com.witty.dao;

import java.util.List;

import com.wity.command.EventcreateCommand;

//import java.util.Date;
public interface IEventcreateDAO {

	public int geteventDetails(String Eventname,String ndate,int nopreq,String Empid);
	public void seteventDetails(String Eventname,String ndate,int nopreq,String Empid);
	public List<EventcreateCommand> getempdetails();
}
