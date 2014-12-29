package com.witty.service;

import com.witty.command.Regcommand;
import com.witty.service.RegFun;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class RegService implements RegFun {

@Autowired
private JdbcTemplate jdbcTemplate;

public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
 public void addEmployee(Regcommand regcommand) {
String sql= "INSERT INTO registartionform(firstname,lastname,empid,email,password,username) values('"+regcommand.getFirstName()+"','"+regcommand.getLastName()+"','"+regcommand.getEmail()+"','"+regcommand.getPassword()+"','"+regcommand.getUsername()+"')";
jdbcTemplate.update(sql);

}
}