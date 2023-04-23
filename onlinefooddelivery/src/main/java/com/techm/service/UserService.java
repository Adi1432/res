package com.techm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.dao.UserRepo;

import com.techm.model.User;

@Service
public class UserService {
	@Autowired
	private UserRepo ur;
	
	public User addUser(User u) {
		return ur.save(u); 
	}
	public void delUser(int id) {
		ur.deleteById(id);
	}
	public User updateUser(User u,int id) {
		User j=ur.findById(id).get();
		j.setUserName(u.getUserName());
		j.setEmail(u.getEmail());
		j.setContact(u.getContact());
		return ur.save(j);
	}
	public User authenticateUser(String userName, String password) {
		// TODO Auto-generated method stub
		return ur.findByUserNameAndPassword(userName, password);
	}
	public List<User> getAllUser() {
		return ur.findAll();
	}
	

}
