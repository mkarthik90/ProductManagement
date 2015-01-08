package com.witty.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository("loginDAO")
public class LoginDAO implements ILoginDAO {

	public int getLoginDetails(String userName,String password){
		
		DataSource dataSource = DataFactory.getDataSource();
		String sql = "SELECT COUNT(*) from emp.entry where userName=? AND password=?";
		JdbcTemplate template = new JdbcTemplate(dataSource);
		int count = template.queryForInt(sql, new Object[]{userName,password});
		return count;
	}
	
}
