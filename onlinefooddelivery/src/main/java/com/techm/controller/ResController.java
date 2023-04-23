package com.techm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.techm.model.Restaurant;
import com.techm.service.RestaurantService;

@RestController
public class ResController {

	@Autowired
	private RestaurantService service;

	@GetMapping("/showaddResform")
	public ModelAndView showaddResform() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("AddResForm");
		return mv;
	}

	@PostMapping("/addRes")
	public ModelAndView addRes(@ModelAttribute("res") Restaurant res) {

		service.addRestaurant(res);

		return new ModelAndView("redirect:/viewAllRes");

	}

	@GetMapping("/viewAllRes")

	public ModelAndView viewAllRes() {

		List<Restaurant> list = service.getAllRestaurant();

		ModelAndView mv = new ModelAndView();

		mv.addObject("list", list);

		mv.setViewName("ViewAllRes");
		return mv;

	}

	@PostMapping("/deleteres")
	public ModelAndView deleteRes(@RequestParam("t8") int id) {

		service.delRestaurant(id);

		return new ModelAndView("redirect:/viewAllRes");

	}

	@PostMapping("/showresupdateform")
	public ModelAndView showResUpdateForm(@RequestParam("t7") int id) {

		ModelAndView mv = new ModelAndView();

		mv.addObject("id", id);
		mv.setViewName("UpdateRes");
		return mv;

	}
	
	@PostMapping("/UpdateRes")
	public ModelAndView updateRes(@ModelAttribute("res") Restaurant res,@RequestParam("t7") int id) {
		
		service.updateRestaurant(res, id);
		
		return new ModelAndView("redirect:/viewAllRes");
		
		
	}
	
	@GetMapping("/ShowRegisterLogin")
	public ModelAndView RegisterRes() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("ResLogin");
		return mv;
	}
	
	@PostMapping("/LoginRes")
	public ModelAndView loginRes(@ModelAttribute("res") Restaurant res) {
		
	 Restaurant res1 = 	service.authenticateUser(res.getResName(),res.getPassword());
		
		ModelAndView mv = new ModelAndView();

		int id = res1.getId();
		mv.addObject("id",id);
		
		mv.setViewName("WelcomeRes");
		return mv;
			
	}
	
	@GetMapping("/RegisterResForm")
	public ModelAndView registerResForm() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("RegisterRes");
		return mv;
		
		
	}
	
	
	@PostMapping("/RegisterRes")
	public ModelAndView resRegister(@ModelAttribute("res") Restaurant res) {

		service.addRestaurant(res);

		return new ModelAndView("ResLogin");

	}
	
@PostMapping("/showUpateRestuarantForm")
public ModelAndView showUpdateRestuarantForm(@RequestParam("id") int id) {
	
	ModelAndView mv = new ModelAndView();
	
	mv.addObject("id", id);
	mv.setViewName("UpdateRestaurant");
	return mv;
	
}

@PostMapping("/UpdateRestaurant")
public ModelAndView updateRestaurant(@ModelAttribute("res") Restaurant res,@RequestParam("id") int id) {
	
	service.updateRestaurant(res, id);
	
	return new ModelAndView("done");
	
	
}

	

}
