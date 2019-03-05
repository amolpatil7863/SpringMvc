/**
 * 
 */
package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.dto.PersonDto;
import com.spring.mvc.service.PersonService;

/**
 * @author amol
 *
 */
@Controller
@RequestMapping(value="/person")
public class PersonController {

	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/add-emp", method = RequestMethod.POST)
	public ModelAndView addEmployee(@ModelAttribute PersonDto personDto, ModelAndView modelAndView) {

		modelAndView.setViewName("view-emp");
		personService.save(personDto);
		
		return modelAndView;
	}

	/*
	 * @RequestMapping(value="/login" ,method=RequestMethod.POST) public String
	 * sayWelcome(UserData login){ System.out.println("------------ss");
	 * System.out.println(login); return "welcome"; }
	 */
}
