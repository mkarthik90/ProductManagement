package com.witty.dao;
import java.sql.SQLException;
import com.witty.command.Regcommand;
import org.springframework.jdbc.core.RowMapper;
import com.mysql.jdbc.ResultSet;
public abstract class RegMapping implements RowMapper<Regcommand> {
	public Regcommand mapRow(ResultSet resultSet,int rowNum) throws SQLException{
		Regcommand register=new Regcommand();
		register.setFirstName(resultSet.getString("FirstName"));
		register.setLastName(resultSet.getString("LastName"));
		register.setEmail(resultSet.getString("Email"));
		register.setEmpId(resultSet.getString("EmpId"));
		register.setUsername(resultSet.getString("Username"));
		register.setPassword(resultSet.getString("Password"));
		return register;
	}

}
