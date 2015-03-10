package com.witty.service;

import java.sql.DriverManager;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.witty.dao.EventEmployeeRegisterDAO;
import com.witty.dao.IEventEmployeeRegisterDAO;
import com.wity.command.EventCommand;
@Service("eventEmployeeRegisterService")
public class EventEmployeeRegisterService implements IEventEmployeeRegisterService {
	
	
		private JdbcTemplate jdbcTemplate;
		 public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
				this.jdbcTemplate = jdbcTemplate;
			}
		 @Autowired
		 @Qualifier("eventEmployeeRegisterDAO")
		 public IEventEmployeeRegisterDAO eventEmployeeRegisterDAO;
	
		 public void addeventservice(String empid,String employeename,String Eventname,String Products){
				eventEmployeeRegisterDAO.addeventservice(empid,employeename,Eventname,Products);
			}

}
