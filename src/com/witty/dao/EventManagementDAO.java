package com.witty.dao;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository("eventManagementDAO")
public class EventManagementDAO implements IEventManagementDAO{
	public void showEmployee(){
	DataSource dataSource = DataFactory.getDataSource();
	JdbcTemplate template = new JdbcTemplate(dataSource);
	String sql = new String("SELECT empid,firstname from empde ") ;
	//int numberOfRecordsUpdated = template.update(sql,new Object[]{EmpId,Username,Email,FirstName,LastName,Password});
}
}
