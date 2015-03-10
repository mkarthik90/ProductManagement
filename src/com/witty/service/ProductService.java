package com.witty.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.wity.command.EventCommand;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.witty.dao.IEventManagementDAO;



@Service("productService")

public class  ProductService implements RowMapper<EventCommand> {

	private JdbcTemplate jdbcTemplate;
	 public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
			this.jdbcTemplate = jdbcTemplate;
		}
	 @Autowired
	 @Qualifier("eventManagementDAO")
	 
	 public IEventManagementDAO eventManagementDAO;
	 
	@Override
	 public EventCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
		//EventCommand eventcommand=new EventCommand();
		EventCommand eventcommand2=new EventCommand();
		System.out.println("In EventServcie");
		//eventcommand.setemployee(rs.getString("firstname"));
		//eventcommand.setEmployee(rs.getString("firstname"));
		//eventcommand.setEmpid(rs.getString("empid"));
		eventcommand2.setProducts(rs.getString("pname"));
		//String test2=eventcommand.getEmployee();
		System.out.println("Executing query");
		//System.out.println(test2);
		//System.out.println("In service "+eventcommand );
		return eventcommand2;
		
	}

	
	 
}
