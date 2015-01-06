package com.wity.command;

public class DeregistrCommand {
	private String Empid;
	private String userName;
	private boolean DeregistrStatus = true;
	
	
	public String getEmpid() {
		return Empid;
	}
	public void setEmpid(String empid) {
		Empid = empid;
	}
	public String getuserName() {
		return userName;
	}
	public void setuserName(String username) {
		userName = username;
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

}
