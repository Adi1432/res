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
import com.techm.model.User;
import com.techm.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService service;

	@GetMapping("/showadduserform")
	public ModelAndView showAddUserForm() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("AddUserForm");
		return mv;
	}

	@PostMapping("/adduser")

	public ModelAndView addUser(@ModelAttribute("user") User user) {

		service.addUser(user);

		return new ModelAndView("redirect:/viewUsers");
	}

	@GetMapping("/viewUsers")

	public ModelAndView viewUsers() {

		List<User> list = service.getAllUser();

		ModelAndView mv = new ModelAndView();

		mv.addObject("list", list);
		mv.setViewName("ViewUsers");
		return mv;

	}

	@PostMapping("/deleteUser")
	public ModelAndView deleteuser(@RequestParam("t8") int id) {

		service.delUser(id);
		return new ModelAndView("redirect:/viewUsers");

	}

	@PostMapping("/updateshowuserform")
	public ModelAndView showUserUpdateForm(@RequestParam("t7") int id) {

		ModelAndView mv = new ModelAndView();

		mv.addObject("id", id);
		mv.setViewName("UpdateUser");
		return mv;

	}

	@PostMapping("/updateUser")
	public ModelAndView updateRes(@ModelAttribute("user") User user, @RequestParam("t7") int id) {

		service.updateUser(user, id);

		return new ModelAndView("redirect:/viewUsers");

	}

	@GetMapping("/ShowUsersLogin")
	public ModelAndView showUsersLogin() {

		return new ModelAndView("UserLogin");
	}

	@PostMapping("/loginUser")
	public ModelAndView loginUser(@ModelAttribute("user") User user) {

		User u = service.authenticateUser(user.getUserName(), user.getPassword());

		ModelAndView mv = new ModelAndView();
		mv.addObject("id", u.getId());
		mv.setViewName("WelcomeUser");
		return mv;

	}

	@GetMapping("/showRegisterUserForm")
	public ModelAndView registerUser() {
		return new ModelAndView("RegisterUser");
	}

	@PostMapping("/registerUser")
	public ModelAndView registerUser(@ModelAttribute("user") User user) {

		service.addUser(user);

		return new ModelAndView("redirect:/ShowUsersLogin");

	}

	@PostMapping("/showUpdateUserForm")
	public ModelAndView updateUser(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", id);
		mv.setViewName("UpdateProfile");
		return mv;
	}
	
	@PostMapping("/updateProfile")
	public ModelAndView updateProfie(@ModelAttribute("user") User user,@RequestParam("id") int id) {
		
		service.updateUser(user, id);
		
		return new ModelAndView("done");
	}

}
