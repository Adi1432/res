package com.techm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.techm.model.User;
@Repository
public interface UserRepo extends JpaRepository<User, Integer>{
	public User findByUserNameAndPassword(String userName,String password);
}
