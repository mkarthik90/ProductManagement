package com.witty.service;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wity.command.DeregistrCommand;
public interface IEmplistservice {
	public DeregistrCommand mapRow(ResultSet rs, int rowNum) throws SQLException;
}
