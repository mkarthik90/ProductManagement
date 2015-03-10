package com.witty.service;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.stereotype.Service;

import com.wity.command.DeregistrCommand;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.witty.dao.IDeregistrDAO;
@Service("employlistservice")

public class Emplistservice implements RowMapper<DeregistrCommand> 
{	
		
	 
	@Autowired
	 @Qualifier("deregistrDAO")
	 
	 public IDeregistrDAO deregistrDAO;
	 
	@Override
	 public DeregistrCommand mapRow(ResultSet rs, int rowNum) throws SQLException {
		DeregistrCommand deregistrcommand=new DeregistrCommand();
		deregistrcommand.setEmpid(rs.getString("empid"));
		deregistrcommand.setUserName(rs.getString("username"));
		System.out.println("aa");
		return deregistrcommand;
	}

}













	

