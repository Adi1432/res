package com.techm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.techm.service.AdminService;

@RestController
public class AdminController {
	
	@Autowired
	private AdminService service;

	@GetMapping("/home")
	public ModelAndView home() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("home");
		return mv;

	}

	@GetMapping("/showadminloginform")
	public ModelAndView showLoginForm() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("AdminLogin");
		return mv;

	}
	
	@PostMapping("/adminLogin")
	public ModelAndView adminLogin(@RequestParam("userName") String un, @RequestParam("password") String pss) {
		
		service.authenticateUser(un,pss);
		
		ModelAndView mv = new ModelAndView();

		mv.setViewName("WelcomeAdmin");
		return mv;
		
		
	}
	
	

}
