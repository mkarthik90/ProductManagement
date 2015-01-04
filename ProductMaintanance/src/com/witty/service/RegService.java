package com.witty.service;

import java.sql.DriverManager;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.witty.dao.EmployeeRegistrationDAO;
import com.witty.dao.IEmployeeRegistrationDAO;
import com.wity.command.Regcommand;

@Service("regService")

public class RegService implements IRegService {

private JdbcTemplate jdbcTemplate;
 public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
 @Autowired
 @Qualifier("employeeRegistrationDAO")
 public IEmployeeRegistrationDAO employeeRegistrationDAO;
 

	 /*String Fname=regcommand.getFirstName();
	 String Lname=regcommand.getLastName();
	 String empid=regcommand.getEmpId();
	 String email=regcommand.getEmail();
	 String password=regcommand.getPassword();
	 String username=regcommand.getUsername();
	 Connection con;
	 Statement ps;
	 ResultSet rs;*/
	/* try
     {
		 
         /*Class.forName("com.mysql.jdbc.Driver");
         con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dbo","root","");
         ps = (Statement) con.createStatement();
         String sql= "INSERT INTO eRegmpde(firstname,lastname,empid,email,password,username) values('"+Fname+"','"+Lname+"','"+empid+"','"+email+"','"+password+"','"+username+"')";
         ps.executeUpdate(sql);*/
		 
     /*}
	 catch(Exception ex)
	 {
		 System.out.println("Exception Occur"+ex);
	 }*/
	 //JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);


//jdbcTemplate.update(sql);



@Override
public void addEmployee(String EmpId, String Username, String Email,
		String FirstName, String LastName, String Password) {
	employeeRegistrationDAO.addEmployee(EmpId, Username, Email, FirstName, LastName, Password);
	
}
}