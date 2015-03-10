package com.witty.service;

import com.wity.command.Regcommand;


public interface IRegService {
	public boolean checkemployeeDetails(String Username,String Email);
	public int addEmployee(String Username,String Email,String FirstName,String LastName,String Password);
	//public int gettheempid();
}
