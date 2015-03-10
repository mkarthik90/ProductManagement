package com.witty.dao;
import java.util.ArrayList;

import com.wity.command.EventList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.witty.dao.IEventManagementDAO;
import com.witty.service.EventService;
import com.witty.service.EventServiceEvent;
import com.witty.service.EventServiceProduct;
import com.witty.service.ProductService;
import com.wity.command.EventCommand;
@Repository("eventManagementDAO")
public class EventManagementDAO implements IEventManagementDAO{
	public List<EventCommand> showEmployee(){
		//EventList eventlist=new EventList();
		
	DataSource dataSource = DataFactory.getDataSource();
	JdbcTemplate template = new JdbcTemplate(dataSource);
	System.out.println("connected to database");
	String sql = new String("SELECT empid,firstname,ename from empde ") ;
	//String sql2=new String("SELECT pname from dbo.productdetails");
	System.out.println("Executing query");
/*	List<EventCommand> employee2= new ArrayList<EventCommand>();
	List<Map<String, Object>> rows=template.queryForList(sql);
	for(Map row:rows){
		EventCommand eventcommand=new EventCommand();
		eventcommand.setemployee((String)row.get("firstname"));
		System.out.println(eventcommand);
	}*/
	List<EventCommand> employeee = (List<EventCommand>) template.query(sql, new EventService());  
	//List<EventCommand> products=(List<EventCommand>) template.query(sql2, new ProductService());
	//List<String> employee2= employee;
	System.out.println("Executing List");
	//System.out.println(employee2);
	return employeee;
	//Map referenceData= new HashMap();
	//List<String> newlist=new ArrayList<String>();
	//int numberOfRecordsUpdated = template.queryForInt(sql);
}
	public List<EventCommand> showproductname(){
		System.out.println("in show prod");
		DataSource dataSource = DataFactory.getDataSource();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		System.out.println("connected to roduct database");
		String sql = new String("SELECT pname from productdetails ") ;
		System.out.println("Executing query product list");
		List<EventCommand> pname = (List<EventCommand>) template.query(sql, new EventServiceProduct());
		System.out.println("Executing List");
		return pname;
	}
	public List<EventCommand> showeventname(){
		System.out.println("in show prod");
		DataSource dataSource = DataFactory.getDataSource();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		System.out.println("connected to roduct database");
		String sql = new String("SELECT eventname from events ") ;
		System.out.println("Executing query product list");
		List<EventCommand> pname = (List<EventCommand>) template.query(sql, new EventServiceEvent());
		System.out.println("Executing List");
		return pname;
	}
}
