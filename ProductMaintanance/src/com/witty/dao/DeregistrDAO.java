package com.witty.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("deregistrDAO")
public class DeregistrDAO implements IDeregistrDAO {
	public int getDeregistrDetails( String Empid,String userName){
			//System.out.println(Empid + Name);
			DataSource dataSource = DataFactory.getDataSource();
			//System.out.println("query executed");
			String sql = "SELECT COUNT(*) from dbo.empde where empid=? AND username=? ";
			JdbcTemplate template = new JdbcTemplate(dataSource);
			int count = template.queryForInt(sql, new Object[]{Empid,userName});
			//System.out.println("query executed di");
			return count;
		}
	public int getremprodDetails(String Empid){
		
		DataSource dataSource1 = DataFactory.getDataSource();
		String SQL = "select remprod from dbo.empde where empid=?";
		JdbcTemplate template1 = new JdbcTemplate(dataSource1);
		int remprod=template1.queryForInt(SQL, new Object[]{Empid});
		return remprod;
	}
	public void deletemp(String Empid){
		DataSource dataSource2 = DataFactory.getDataSource();
		String sql1="delete from dbo.empde where empid=?";
		JdbcTemplate template2 = new JdbcTemplate(dataSource2);
		template2.update(sql1,new Object[]{Empid});
		
		}
		
}

