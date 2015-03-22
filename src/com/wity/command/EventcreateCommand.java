package com.wity.command;

import org.springframework.format.annotation.DateTimeFormat;

public class EventcreateCommand {
	private String Hour;
	private String Minutes;
	
	private String products;
	private String mic;
	private String speaker;
	private String led;
	private String projector;
	private String returnDate;
	private String Rampm;
	private String RHour;
	private String RMinutes;
	private String Rtime;
	
	private String ampm;
	private String Empid;
	private String Eventname;
	private int nopreq;
	
	private String nDate;
	private String ntime;
	private boolean eventmenStatus = false;
	private boolean eventStatus = true;
	private String place;
	//private date ndate;
	
	
	
	public boolean isEventStatus() {
		return eventStatus;
	}
	
	public String getRtime() {
		Rtime=RHour + ":" + RMinutes+":00 "+Rampm;
		return Rtime;
	}

	public void setRtime(String rtime) {
		Rtime = rtime;
	}

	public String getRampm() {
		return Rampm;
	}

	public void setRampm(String rampm) {
		Rampm = rampm;
	}

	public String getRHour() {
		return RHour;
	}

	public void setRHour(String rHour) {
		RHour = rHour;
	}

	public String getRMinutes() {
		return RMinutes;
	}

	public void setRMinutes(String rMinutes) {
		RMinutes = rMinutes;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String getProducts() {
		return products;
	}
	public void setProducts(String products) {
		this.products = products;
	}
	public String getMic() {
		System.out.println("mic"+mic);
		return mic;
	}
	
	public void setMic(String mic) {
		this.mic = mic;
	}
	public String getSpeaker() {
		return speaker;
	}
	public void setSpeaker(String speaker) {
		this.speaker = speaker;
	}
	public String getLed() {
		return led;
	}
	public void setLed(String led) {
		this.led = led;
	}
	public String getProjector() {
		return projector;
	}
	public void setProjector(String projector) {
		this.projector = projector;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getNtime() {
		ntime=Hour + ":" + Minutes+":00 "+ampm;
		return ntime;
	}
	public void setNtime(String ntime) {
		this.ntime = ntime;
	}
	public String getHour() {
		return Hour;
	}
	public void setHour(String hour) {
		Hour = hour;
	}
	public String getMinutes() {
		return Minutes;
	}
	public void setMinutes(String minutes) {
		Minutes = minutes;
	}
	public String getAmpm() {
		return ampm;
	}
	public void setAmpm(String ampm) {
		this.ampm = ampm;
	}
	public boolean isEventmenStatus() {
		return eventmenStatus;
	}
	public void setEventmenStatus(boolean eventmenStatus) {
		
		this.eventmenStatus = false;
	}
	public String getEmpid() {
		
		return Empid;
	}
	public void setEmpid(String empid) {
		Empid = empid;
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
	
	

