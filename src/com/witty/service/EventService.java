package com.witty.service;

import org.springframework.stereotype.Service;
import com.wity.command.EventCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import com.witty.dao.IEventManagementDAO;
import com.witty.dao.IEmployeeRegistrationDAO;


@Service("eventService")

public class EventService implements IEventService {

	private JdbcTemplate jdbcTemplate;
	 public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
			this.jdbcTemplate = jdbcTemplate;
		}
	 @Autowired
	 @Qualifier("eventRegistrationDAO")
	 public IEventManagementDAO eventRegistrationDAO;
	 
	 @Override
	 public void showEvent( String Eventname,String Employee,String Products) {
	 	eventRegistrationDAO.showEmployee();
	 	
	 }

}
