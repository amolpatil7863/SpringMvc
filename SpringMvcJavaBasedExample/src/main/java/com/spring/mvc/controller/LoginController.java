package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mvc.model.Employee;
import com.spring.mvc.service.EmployeeService;

@Controller
public class LoginController {

	@Autowired
	private EmployeeService employeeService;
	

    
    @RequestMapping("/sayhello")
    public String showLoginPage() {
    	try{
    	
//    	Employee employee=new Employee(1,"steve",34,"CSE");
    	Employee employee=new Employee();
    	employee.setAge(40);
    	employee.setId(1);
    	employee.setName("Steve");
    	employee.setDept("CSE");
//    	employeeService.saveEmployee(employee);
    	}catch (Exception e) {
    		e.printStackTrace();
		}
        return "welcome";
    }
    
    
   
    
}
