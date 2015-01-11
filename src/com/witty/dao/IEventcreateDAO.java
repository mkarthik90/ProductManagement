package com.witty.dao;
//import java.util.Date;
public interface IEventcreateDAO {

	public int geteventDetails(String Eventname,String ndate,int nopreq,String Empid);
	public void seteventDetails(String Eventname,String ndate,int nopreq,String Empid);
}
