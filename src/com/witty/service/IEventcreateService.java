package com.witty.service;



public interface IEventcreateService {

	public boolean checkeventDetails(String Eventname, String ndate,int nopreq,String ntime,String place,String products);
	public String getdatetime();
	
}
