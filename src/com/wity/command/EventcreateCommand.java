package com.wity.command;

import org.springframework.format.annotation.DateTimeFormat;

public class EventcreateCommand {
	private String Eventname;
	private int nopreq;
	@DateTimeFormat(pattern="yyyy.MM.dd")
	private String nDate;
	private boolean eventStatus = true;
	//private date ndate;
	
	
	public boolean isEventStatus() {
		return eventStatus;
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
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	
	

}
