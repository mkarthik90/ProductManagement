package com.wity.command;

public class EventCommand {

	String Eventname;
	String employee;
	String Products;
	String empid;
	String test;
	String empidtest;
	String employeename;
    String empidnew;
    
	
	public String getEmpidtest() {
		return empidtest;
	}
	public void setEmpidtest(String empidtest) {
		this.empidtest = empidtest;
	}
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
	public String getEmpidnew() {
		return empidnew;
	}
	public void setEmpidnew(String empidnew) {
		this.empidnew = empidnew;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public String getEmpid() {
		//System.out.println("in ev in getEmpid "+ empid);
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
		//System.out.println("in ev in setEmpid "+ empid);
	}
	public String getEventname() {
		//System.out.println("in ev getEventname "+ Eventname);
		return Eventname;
	}
	public String getEmployee() {
		//System.out.println("in ev getEmploye "+ employee);
		return employee;
	}
	public void setEmployee(String employee) {
		this.employee = employee;
		//System.out.println("in ev setEmployee "+ employee);
	}
	public void setEventname(String eventname) {
		this.Eventname = eventname;
		//System.out.println("in ev setEventname "+ Eventname);
	}
	/*public String getemployee() {
		System.out.println("in ev getemployee"+ employee);
		return employee;
		
	}
	public void setemployee(String employee) {
		this.employee = employee;
		System.out.println("in ev setemployee"+employee);
		
	}*/
	public String getProducts() {
		//System.out.println("in ev getProducts "+ Products);
		return Products;
		
	}
	public void setProducts(String products) {
		this.Products = products;
		//System.out.println("in ev setProducts "+ Products);
		
	}
	public String toString(){
	//	System.out.println("in ev toString "+ employee);
		return  this.empid+":"+ this.Products +":"+ this.employeename+":"+this.Eventname ;
	}

}
