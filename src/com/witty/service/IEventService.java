package com.witty.service;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wity.command.EventCommand;
public interface IEventService {
	

public EventCommand mapRow(ResultSet rs, int rowNum) throws SQLException;


}
