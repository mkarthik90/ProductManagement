package com.wity.command;

public class LoginCommand {

	private String userName;
	private String password;
	private boolean loginStatus = true;

	public boolean isLoginStatus() {
		return loginStatus;
	}

	public boolean getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(boolean loginStatus) {
		this.loginStatus = loginStatus;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
