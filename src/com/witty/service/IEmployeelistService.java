package com.witty.service;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wity.command.EmplistCommand;
public interface IEmployeelistService {
	public EmplistCommand mapRow(ResultSet rs, int rowNum) throws SQLException;
}
