package com.witty.dao;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.witty.service.Empservice;
import com.wity.command.EventcreateCommand;


@Repository("eventcreateDAO")
public class EventcreateDAO implements IEventcreateDAO {

	public int geteventDetails(String Eventname,String ndate,int nopreq,String Empid){
		
		DataSource dataSource = DataFactory.getDataSource();
		String sql = "SELECT COUNT(*) from dbo.eventdetails where eventname=? AND date=? AND nopreq=? AND empid=?";
		JdbcTemplate template = new JdbcTemplate(dataSource);
		int count = template.queryForInt(sql, new Object[]{Eventname,ndate,nopreq,Empid});
		return count;
	}
	public void seteventDetails(String Eventname,String ndate,int nopreq,String Empid){
		DataSource dataSource2 = DataFactory.getDataSource();
		String sql1="insert into dbo.eventdetails (eventname,date,nopreq,empid) values (?, ?, ?, ?)";
		JdbcTemplate template2 = new JdbcTemplate(dataSource2);
		template2.update(sql1,new Object[]{Eventname,ndate,nopreq,Empid});
		
		}
	public List<EventcreateCommand> getempdetails(){
		DataSource dataSource3 = DataFactory.getDataSource();
		
	    System.out.println("connected to database");
		String sq= new String("SELECT empid from dbo.empde ") ;
		JdbcTemplate temp = new JdbcTemplate(dataSource3);
		
		
		List<EventcreateCommand> employee = (List<EventcreateCommand>) temp.query(sq, new Empservice());  
		
		return employee;
	
}
	
}
