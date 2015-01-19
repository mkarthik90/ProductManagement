package com.witty.service;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wity.command.EventcreateCommand;
public interface IEmpservice {
	public EventcreateCommand mapRow(ResultSet rs, int rowNum) throws SQLException;
}
