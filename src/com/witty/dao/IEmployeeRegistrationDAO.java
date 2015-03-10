package com.witty.dao;

public interface IEmployeeRegistrationDAO {
	
	public int getemployeeDetails(String Username,String Email);
	public int addEmployee(String Username,String Email,String FirstName,String LastName,String Password);
	public void addEmpdetails(String Username,int Empid);
	public int gettheempid();
	
}
