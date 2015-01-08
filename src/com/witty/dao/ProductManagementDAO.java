package com.witty.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("productManagementDAO")
public class ProductManagementDAO {

	
	public List getProductDetails(){
		
		JdbcTemplate template = new JdbcTemplate(DataFactory.getDataSource());
		String sql = "SELECT * FROM productdetails";
		List productValues = template.queryForList(sql);
		return productValues;
	}
}
