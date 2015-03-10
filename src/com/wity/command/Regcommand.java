package com.wity.command;

import com.sun.istack.internal.NotNull;

public class Regcommand {
	//@Size(min=3,max=30,message="Please entet the valid FirstName")
	@NotNull
	String FirstName;
	@NotNull
	String LastName;
	@NotNull
	String Email;

	@NotNull
	String Password;
	@NotNull
	String Username;
	private boolean eventStatus = true;
	
	public boolean getEventStatus() {
		return eventStatus;
	}
	public boolean isEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(boolean eventStatus) {
		this.eventStatus = eventStatus;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String Username) {
		this.Username = Username;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String FirstName) {
		this.FirstName = FirstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String LastName) {
		this.LastName = LastName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	

	
}
