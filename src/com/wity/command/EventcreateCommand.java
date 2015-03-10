package com.wity.command;

import org.springframework.format.annotation.DateTimeFormat;

public class EventcreateCommand {
	private String Hour;
	private String Minutes;
	
	private String mic;
	private String speaker;
	private String led;
	private String projector;
	
	private String ampm;
	private String Empid;
	private String Eventname;
	private int nopreq;
	private String day;
	private String month;
	private String year;
	@DateTimeFormat(pattern="yyyy.MM.dd")
	private String nDate;
	private String ntime;
	private boolean eventmenStatus = false;
	private boolean eventStatus = true;
	private String place;
	//private date ndate;
	
	
	
	public boolean isEventStatus() {
		return eventStatus;
	}
	public String getMic() {
		System.out.println("mic"+mic);
		return mic;
	}
	//@Override
	//public String toString() {
		//return "EventcreateCommand [mic=" + mic + ", speaker=" + speaker
		//		+ ", led=" + led + ", projector=" + projector + "]";
	//	return projector;
	//}
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
	//@Override
	//public String toString() {
	//	return Empid ;
		
	}
	
	

