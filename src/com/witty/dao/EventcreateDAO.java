package com.witty.dao;
import java.util.Date;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository("eventcreateDAO")
public class EventcreateDAO implements IEventcreateDAO {

	public int geteventDetails(String Eventname,Date ndate,int nopreq){
		
		DataSource dataSource = DataFactory.getDataSource();
		String sql = "SELECT COUNT(*) from dbo.eventdetails where eventname=? AND date=? AND nopreq=?";
		JdbcTemplate template = new JdbcTemplate(dataSource);
		int count = template.queryForInt(sql, new Object[]{Eventname,ndate,nopreq});
		return count;
	}
	public void seteventDetails(String Eventname,Date ndate,int nopreq){
		DataSource dataSource2 = DataFactory.getDataSource();
		String sql1="insert into dbo.eventdetails (eventname,date,nopreq) values (?, ?, ?)";
		JdbcTemplate template2 = new JdbcTemplate(dataSource2);
		template2.update(sql1,new Object[]{Eventname,ndate,nopreq});
		
		}
	
}
