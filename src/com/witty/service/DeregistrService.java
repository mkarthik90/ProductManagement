
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
	//int remiprod;

	public boolean checkregistrDetails(String Empid,String userName){
		if(deregistrDAO.getDeregistrDetails(Empid, userName)==0){
			return false;
		}
		return true;
	}
	public boolean checkprodDetails(String Empid,String userName)
	{   int remiprod;
		remiprod=deregistrDAO.getremprodDetails(Empid);
		if(remiprod==0)
		{
			deregistrDAO.deletemp(Empid);
			return true;
		}
		return false;
		
	}
	
	
}


