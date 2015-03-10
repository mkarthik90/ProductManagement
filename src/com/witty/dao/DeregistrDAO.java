package com.witty.dao;

import java.util.List;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.witty.service.Emplistservice;
import com.wity.command.DeregistrCommand;

@Repository("deregistrDAO")
public class DeregistrDAO implements IDeregistrDAO {
	
	public int getremprodDetails(String Empid){
		
		DataSource dataSource1 = DataFactory.getDataSource();
		String SQL = "select remprod from dbo.empdetails where empid=?";
		JdbcTemplate template1 = new JdbcTemplate(dataSource1);
		int remprod=template1.queryForInt(SQL, new Object[]{Empid});
		return remprod;
	}
	public void deletemp(String Empid){
		DataSource dataSource2 = DataFactory.getDataSource();
		String sql1="delete from dbo.empde where empid=?";
		String sql2="delete from dbo.empdetails where empid=?";
		JdbcTemplate template3 = new JdbcTemplate(dataSource2);
		template3.update(sql2,new Object[]{Empid});
		JdbcTemplate template2 = new JdbcTemplate(dataSource2);
		template2.update(sql1,new Object[]{Empid});
		
		}
	public List<DeregistrCommand> getemplistdetails(){
		DataSource dataSource3 = DataFactory.getDataSource();
		
	    System.out.println("connected to database");
		String sq= new String("SELECT empid,username from dbo.empde ") ;
		JdbcTemplate temp = new JdbcTemplate(dataSource3);
		
		
		List<DeregistrCommand> employee = (List<DeregistrCommand>) temp.query(sq, new Emplistservice());  
		
		return employee;
	
}
	public String getusernamDetails(String Empid)
	{
		DataSource dataSource4 = DataFactory.getDataSource();
		String SQL1 = "select username from dbo.empde where empid=?";
		JdbcTemplate template4 = new JdbcTemplate(dataSource4);
		String username = template4.queryForObject(SQL1, new Object[]{Empid}, String.class);  
		//int username=template4.queryForInt(SQL1, new Object[]{Empid});
		//System.out.println("in dao"+username);
		return username.toString();
		
	}
		
}

