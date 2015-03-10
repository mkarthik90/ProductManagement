package com.witty.dao;
import java.util.ArrayList;

import com.wity.command.EventList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.witty.dao.IEventManagementDAO;
import com.witty.service.EmployeelistService;
import com.wity.command.EmplistCommand;

@Repository("emplistDAO")
public class EmplistDAO implements IEmplistDAO{
	public List<EmplistCommand> showEmployee(){
		
		
	DataSource dataSource = DataFactory.getDataSource();
	JdbcTemplate template = new JdbcTemplate(dataSource);
	System.out.println("connected to database");
	String sql = new String("SELECT empid,username,firstname,lastname,email from dbo.empde ") ;
		System.out.println("Executing query");
	List<EmplistCommand> employeee = (List<EmplistCommand>) template.query(sql, new EmployeelistService());  
	
	System.out.println("Executing List");
	
	return employeee;
	
}
	
}
