package com.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mvc.bean.UserData;

@Controller
public class FirstController {

	/*@RequestMapping(value="/login" ,method=RequestMethod.POST)
	public String sayWelcome(@ModelAttribute UserData login){
		System.out.println(login);
		return "welcome";
	}
	*/
	
	@RequestMapping(value="/login" ,method=RequestMethod.POST)
	public String sayWelcome(@RequestBody UserData login){
		System.out.println("------------ss");
		System.out.println(login);
		return "welcome";
	}
}
