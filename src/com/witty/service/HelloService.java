package com.witty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.witty.dao.IHelloDAO;

@Service("helloService")
public class HelloService implements IHelloService{

	@Autowired
	@Qualifier("helloDAO")
	public IHelloDAO helloDAO;
	
	public List getDetails(){
		List list = helloDAO.getDetailsForLogin();
		return list;
	}
}
