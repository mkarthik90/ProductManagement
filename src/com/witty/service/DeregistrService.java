
package com.witty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.witty.dao.IDeregistrDAO;

@Service("deregistrService")

public class DeregistrService implements IDeregistrService {
	
	@Autowired
	@Qualifier("deregistrDAO")
	public IDeregistrDAO deregistrDAO;
	int remiprod;
	String username1;

	public int getproddetails(String Empid)
	{
		remiprod=deregistrDAO.getremprodDetails(Empid);
		return remiprod;
	}
	public boolean checkprodDetails(String Empid)
	{   //int remiprod;
		//remiprod=deregistrDAO.getremprodDetails(Empid);
		if(remiprod==0)
		{
			deregistrDAO.deletemp(Empid);
			return true;
		}
		return false;
		
	}
	public String getusernameDetails(String Empid)
	{
		try
	{
		username1=deregistrDAO.getusernamDetails(Empid);
		//System.out.println("answer is"+username1);
		
		return username1;
	}
		catch(Exception e)
		{
			 System.out.println(e);
		}
		return username1;
	}
	
}


