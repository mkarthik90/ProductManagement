package com.witty.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("helloDAO")
public class HelloDAO implements IHelloDAO {

	public List getDetailsForLogin(){
		//TODO DB COnnections needs to be established
		List list = new ArrayList();
		list.add("test");
		list.add("testingg");
		return list;
	}
}
