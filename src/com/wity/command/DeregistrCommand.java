package com.wity.command;

public class DeregistrCommand {
	private String Empid;
	private String userName;
	private String Empid1;
	private String userName1;
	private boolean DeregistrStatus = true;
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmpid1() {
		System.out.println("in cmd"+Empid1);
		return Empid1;
	}
	public void setEmpid1(String empid1) {
		Empid1 = empid1;
	}
	public String getUserName1() {
		//userName1="getit";
		return userName1;
	}
	public void setUserName1(String userName1) {
		this.userName1 = userName1;
	}
	public String getEmpid() {
		return Empid;
	}
	public void setEmpid(String empid) {
		Empid = empid;
	}
	public boolean isDeregistrStatus() {
		return DeregistrStatus;
	}
	public boolean getDeregistrStatus() {
		return DeregistrStatus;
	}
	public void setDeregistrStatus(boolean deregistrStatus) {
		DeregistrStatus = deregistrStatus;
	}
	@Override
	public String toString() {
		return Empid;
	}

}
