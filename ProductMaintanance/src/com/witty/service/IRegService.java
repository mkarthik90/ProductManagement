package com.witty.service;

import com.wity.command.Regcommand;


public interface IRegService {
	
	public void addEmployee(String EmpId,String Username,String Email,String FirstName,String LastName,String Password);
}