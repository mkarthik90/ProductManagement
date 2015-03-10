package com.witty.dao;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.witty.service.Empservice;
import com.wity.command.EventcreateCommand;


@Repository("eventcreateDAO")
public class EventcreateDAO implements IEventcreateDAO {

	public int geteventDetails(String Eventname,String ndate,int nopreq,String place){
		
		DataSource dataSource = DataFactory.getDataSource();
		String sql = "SELECT COUNT(*) from dbo.eventdetails where eventname=? AND datetime=? AND nopreq=? AND place=? ";
		JdbcTemplate template = new JdbcTemplate(dataSource);
		int count = template.queryForInt(sql, new Object[]{Eventname,ndate,nopreq,place});
		System.out.println("the new date455 is"+ndate);
		System.out.println(count);
		return count;
	}
	public void seteventDetails(String Eventname,String ndate,int nopreq,String place){
		DataSource dataSource2 = DataFactory.getDataSource();
		System.out.println("the new date45 is"+ndate);
		String sql1="insert into dbo.eventdetails (eventname,datetime,nopreq,place) values (?, ?, ?, ?)";
		JdbcTemplate template2 = new JdbcTemplate(dataSource2);
		template2.update(sql1,new Object[]{Eventname,ndate,nopreq,place});
		}
	
	/*the below is for later use
	 * modification to the below one ll use at list of products 
	 * 
	 * */
	 
	public List<EventcreateCommand> getempdetails(){
		DataSource dataSource3 = DataFactory.getDataSource();
		
	    System.out.println("connected to database");
		String sq= new String("SELECT mic,speaker,projector,led from dbo.productlist ") ;
		JdbcTemplate temp = new JdbcTemplate(dataSource3);
		
		
		List<EventcreateCommand> employee = (List<EventcreateCommand>) temp.query(sq, new Empservice());  
		
		return employee;
	
}
	
}
