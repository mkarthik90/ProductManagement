package com.wity.command;

import org.springframework.format.annotation.DateTimeFormat;

public class EventcreateCommand {
	private String Empid;
	private String Eventname;
	private int nopreq;
	private String day;
	private String month;
	private String year;
	@DateTimeFormat(pattern="yyyy.MM.dd")
	private String nDate;
	private boolean eventStatus = true;
	//private date ndate;
	
	
	public boolean isEventStatus() {
		return eventStatus;
	}
	public String getEmpid() {
		
		return Empid;
	}
	public void setEmpid(String empid) {
		Empid = empid;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public boolean getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(boolean eventStatus) {
		this.eventStatus = eventStatus;
	}
	public String getEventname() {
		return Eventname;
	}
	public void setEventname(String eventname) {
		Eventname = eventname;
	}
	public int getNopreq() {
		return nopreq;
	}
	public void setNopreq(int nopreq) {
		this.nopreq = nopreq;
	}
	public String getnDate() {
		nDate=year + "/" + month+"/"+day;
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	@Override
	public String toString() {
		return Empid ;
		
	}
	
	

}
