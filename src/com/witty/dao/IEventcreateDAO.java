package com.witty.dao;
import java.util.Date;
public interface IEventcreateDAO {

	public int geteventDetails(String Eventname,Date ndate,int nopreq);
	public void seteventDetails(String Eventname,Date ndate,int nopreq);
}
