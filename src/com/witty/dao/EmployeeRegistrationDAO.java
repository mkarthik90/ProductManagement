package com.witty.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("employeeRegistrationDAO")
public class EmployeeRegistrationDAO implements  IEmployeeRegistrationDAO{

	public void addEmployee(String Username,String Email,String FirstName,String LastName,String Password){
		
		DataSource dataSource = DataFactory.getDataSource();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		String sql = new String("INSERT INTO empde(username,email,firstname,lastname,password) values (?,?,?,?,?)");
		int numberOfRecordsUpdated = template.update(sql,new Object[]{Username,Email,FirstName,LastName,Password});
	}
}
