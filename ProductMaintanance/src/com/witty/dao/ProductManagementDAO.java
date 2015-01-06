package com.witty.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.witty.form.ProductDetails;

@Repository("productManagementDAO")
public class ProductManagementDAO {

	
	public List getProductDetails(){
		
		JdbcTemplate template = new JdbcTemplate(DataFactory.getDataSource());
		String sql = "SELECT * FROM productdetails";
		List productValues = template.queryForList(sql);
		return productValues;
	}
	
	public void addProducts(final List<ProductDetails> details){
		JdbcTemplate template = new JdbcTemplate(DataFactory.getDataSource());
		String sql = "INSERT INTO dbo.productdetails (pname,pid) VALUES (?,?)";
		BatchPreparedStatementSetter pss = new BatchPreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps, int arg1) throws SQLException {
				ps.setString(1,String.valueOf(details.get(arg1).getpName()));
				ps.setString(2, String.valueOf(details.get(arg1).getBarCode()));
			}
			
			@Override
			public int getBatchSize() {
				// TODO Auto-generated method stub
				return details.size();
			}
		};
		template.batchUpdate(sql, pss);
	}
}
