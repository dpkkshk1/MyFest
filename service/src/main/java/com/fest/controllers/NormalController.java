package com.fest.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fest.model.Events;


@Controller
public class NormalController {



	@GetMapping("/loginone")
	public ModelAndView login(ModelAndView modelAndView) {

		modelAndView.setViewName("login");

		return modelAndView;
	}

}
