package com.project.projectb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;

import com.project.projectb.beans.User;
import com.project.projectb.serviceImpl.UserServiceImpl;

@Controller
public class UserController {

	@Autowired
	private UserServiceImpl userService;

	@RequestMapping("/")
	public ModelAndView login() {
		return new ModelAndView("Login");
	}

	@RequestMapping("/home")
	public ModelAndView home(@ModelAttribute User user) {
		return new ModelAndView("Home");

	}

	@RequestMapping("/validatelogin")
	public ModelAndView validatelogin(@RequestParam String username, @RequestParam String password, Model m) {
		List<User> list = new ArrayList<User>();
		list = userService.findAll();

		for (User u : list) {
			if (u.getUsername().equals(username) && u.getPassword().equals(password)) {
				return new ModelAndView("Home");
			}
		}
		m.addAttribute("invalid", "User Not Found !!");
		return new ModelAndView("Login");

	}

}
