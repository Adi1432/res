package com.techm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techm.model.Orders;
@Repository
public interface OrderRepo extends JpaRepository<Orders, Integer>{

	
}
