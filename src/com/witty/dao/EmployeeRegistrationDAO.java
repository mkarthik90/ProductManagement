package com.witty.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("employeeRegistrationDAO")
public class EmployeeRegistrationDAO implements  IEmployeeRegistrationDAO{
	
	public int getemployeeDetails(String Username,String Email)
	{
		DataSource dataSource2 = DataFactory.getDataSource();
		String sql3 = "SELECT COUNT(*) from dbo.empde where username=?";
		JdbcTemplate template4 = new JdbcTemplate(dataSource2);
		int count = template4.queryForInt(sql3, new Object[]{Username});
		System.out.println(count);
		return count;
	}
	public int addEmployee(String Username,String Email,String FirstName,String LastName,String Password){
		
		DataSource dataSource = DataFactory.getDataSource();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		JdbcTemplate template2 = new JdbcTemplate(dataSource);
		//JdbcTemplate template3 = new JdbcTemplate(dataSource);
		String sql = new String("INSERT INTO dbo.empde(username,email,firstname,lastname,password)values (?,?,?,?,?)");
		int numberOfRecordsUpdated = template.update(sql,new Object[]{Username,Email,FirstName,LastName,Password});
		String sql1 = new String("select empid from dbo.empde order by empid desc limit 1");
		int empid1=template2.queryForInt(sql1);
		System.out.println("dbo "+empid1);
		//String sql1="insert into dbo.eventdetails (eventname,date,nopreq) values (?, ?, ?)";
		//String sql2 ="INSERT INTO dbo.empdetails(empid)values (?)";
		//template3.update(sql2,new Object[]{empid1});
		return empid1;
	
	}
	public void addEmpdetails(String Firstname,int Empid)
	{
		DataSource dataSource1 = DataFactory.getDataSource();
		JdbcTemplate template3 = new JdbcTemplate(dataSource1);
		String sql2 ="INSERT INTO dbo.empdetails(name,empid)values (?,?)";
		template3.update(sql2,new Object[]{Firstname,Empid});
	}
	public int gettheempid()
	{
		DataSource dataSource2 = DataFactory.getDataSource();
		JdbcTemplate template4 = new JdbcTemplate(dataSource2);
		String sql2 ="SELECT empid from dbo.empde";
		int empid1=template4.queryForInt(sql2);
		System.out.println("In emp-regDAO");
		System.out.println(empid1);
		return empid1;
		
	}
}
