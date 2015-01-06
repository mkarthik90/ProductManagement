package com.witty.dao;

public interface IDeregistrDAO {
	public int getDeregistrDetails(String Empid,String userName);
	public int getremprodDetails(String Empid);
	public void deletemp(String Empid);

}
