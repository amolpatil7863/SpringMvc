/**
 * 
 */
package com.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author amol
 *
 */
@Controller
public class LoginController {
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView showHomePage(ModelAndView modelAndView) {
		System.out.println(":in Login");
		modelAndView.setViewName("welcome");
		return modelAndView;
	}

}
