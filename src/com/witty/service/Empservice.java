package com.witty.service;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.stereotype.Service;
import com.wity.command.EventcreateCommand;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.witty.dao.IEventcreateDAO;
@Service("empservice")

public class Empservice implements RowMapper<EventcreateCommand> 
{	
		
	 
	@Autowired
	 @Qualifier("eventcreateDAO")
	 
	 public IEventcreateDAO eventcreateDAO;
	 
	@Override
	 public EventcreateCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
		EventcreateCommand eventcreatecommand=new EventcreateCommand();
		eventcreatecommand.setEmpid(rs.getString("empid"));
		
		System.out.println("aa");
		return eventcreatecommand;
	}

}













	

