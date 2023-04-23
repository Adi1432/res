package com.techm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.dao.AdminRepo;
import com.techm.model.Admin;
@Service
public class AdminService {
	@Autowired
	private AdminRepo ar;
	public Admin authenticateUser(String userName, String password) {
		// TODO Auto-generated method stub
		return ar.findByUserNameAndPassword(userName, password);
	}

}
