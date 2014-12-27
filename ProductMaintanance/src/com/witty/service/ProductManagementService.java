package com.witty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.witty.dao.ProductManagementDAO;

@Service("productManagementService")
public class ProductManagementService {

	@Autowired
	@Qualifier("productManagementDAO")
	private ProductManagementDAO productManagementDAO;
	
	public List getProductDetails(){
		return productManagementDAO.getProductDetails();
	}
	
}
