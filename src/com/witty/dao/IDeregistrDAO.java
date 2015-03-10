package com.witty.dao;

import java.util.List;
import com.wity.command.DeregistrCommand;

public interface IDeregistrDAO {
	
	public int getremprodDetails(String Empid);
	public void deletemp(String Empid);
	public List<DeregistrCommand> getemplistdetails();
	public String getusernamDetails(String Empid);

}
