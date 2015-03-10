package com.witty.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.wity.command.EmplistCommand;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.witty.dao.IEmplistDAO;



@Service("employeelistservice")

public class  EmployeelistService implements RowMapper<EmplistCommand> {

	private JdbcTemplate jdbcTemplate;
	 public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
			this.jdbcTemplate = jdbcTemplate;
		}
	 @Autowired
	 @Qualifier("emplistDAO")
	 
	 public IEmplistDAO emplistDAO;
	 
	@Override
	public EmplistCommand mapRow(ResultSet rs, int rowNum) throws SQLException{
		EmplistCommand emplistcommand=new EmplistCommand();
		System.out.println("In Emplist Servcie");
		emplistcommand.setEmpid(rs.getString("empid"));
		emplistcommand.setUsername(rs.getString("username"));
		emplistcommand.setFirstname(rs.getString("firstname"));
		emplistcommand.setLastname(rs.getString("lastname"));
		emplistcommand.setEmailid(rs.getString("email"));
		
		
		System.out.println("Executing query in service");
		return emplistcommand;
		
	}

	
	 
}
