package com.witty.dao;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository("eventEmployeeRegisterDAO")
public class EventEmployeeRegisterDAO implements IEventEmployeeRegisterDAO {
	public void addeventservice(String Eventname,String employee,String Products,String empid){
		
		
		DataSource dataSource = DataFactory.getDataSource();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		String sql = new String("INSERT INTO eventemployee(empid,employee,eventname,products) values (?,?,?,?)");
		template.update(sql,new Object[]{empid,employee,Eventname,Products});
	}

}
