package com.witty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.witty.dao.ILoginDAO;

@Service("loginService")
public class LoginService implements ILoginService {
	
	@Autowired
	@Qualifier("loginDAO")
	public ILoginDAO loginDAO;

	public boolean checkLoginDetails(String userName, String password){
		if(loginDAO.getLoginDetails(userName, password)==0){
			return false;
		}
		return true;
	}
	
}
