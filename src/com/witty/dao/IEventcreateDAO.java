package com.witty.dao;

import java.util.List;

import com.wity.command.EventcreateCommand;

//import java.util.Date;
public interface IEventcreateDAO {

	public int geteventDetails(String Eventname,String ndate,int nopreq,String place);
	public void seteventDetails(String Eventname,String ndate,int nopreq,String place);
	public List<EventcreateCommand> getempdetails();
}
