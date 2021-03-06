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

	public int geteventDetails(String Eventname,String ndate,String time,int nopreq,String place){
		
		DataSource dataSource = DataFactory.getDataSource();
		String sql = "SELECT COUNT(*) from dbo.eventdetails where eventname=? AND date=? AND Time=? AND nopreq=? AND place=? ";
		JdbcTemplate template = new JdbcTemplate(dataSource);
		int count = template.queryForInt(sql, new Object[]{Eventname,ndate,time,nopreq,place});
		System.out.println("the new date455 is"+ndate);
		System.out.println(count);
		return count;
	}
	public void seteventDetails(String Eventname,String ndate,String time,String returndate,String returntime,int nopreq,String place,String products){
		
		DataSource dataSource2 = DataFactory.getDataSource();
		System.out.println("the new date45 is"+ndate);
		String sql1="insert into dbo.eventdetails (eventname,date,Time,returnDate,returnTime,nopreq,place,products) values (?, ?, ?, ?, ?, ?, ?, ?)";
	//	String sql2="SELECT COUNT(*) FROM   information_schema.columns WHERE  table_schema = productdetails AND column_name IN  `"+ndate+"`  ";
	//	String sql3="ALTER TABLE productdetails ADD `"+ndate+"` int NOT NULL";
		String sql3="select COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = eventdetails AND COLUMN_NAME like 'plac%'";
		JdbcTemplate template2 = new JdbcTemplate(dataSource2);
	    JdbcTemplate template3 = new JdbcTemplate(dataSource2);
	//	JdbcTemplate template4 = new JdbcTemplate(dataSource2);
		template2.update(sql1,new Object[]{Eventname,ndate,time,returndate,returntime,nopreq,place,products});
		
		//int counts=template3.queryForInt(sql2);
		//System.out.println("query updated successfully3456");
		//if(counts==0){
		//	template4.update(sql3);
		//	System.out.println("query updated successfully");
			
		//}
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
