/**
 * 
 */
package com.spring.rest.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.sping.rest.model.Employee;
import com.spring.rest.service.EmployeeService;

/**
 * @author HP
 *
 */
@RestController
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	@RequestMapping(value="/getemp",method=RequestMethod.GET)
	public List<Employee> getAllEmployee(){
		return employeeService.getEmployee();
	}
	
	//add emp object
	@RequestMapping(value = "/addemp", method = RequestMethod.POST)
	public Employee addEmployee(@RequestBody Employee employee,@RequestHeader Map<String,String> headers) {
		employeeService.addEmployee(employee);
		for (String elem: headers.keySet()) {
			      System.out.println(elem + " : " + headers.get(elem));
			    }
		return employee;
	}

	//restTemplplate
	@RequestMapping(value = "/getemployeelist", method = RequestMethod.GET)
	public List<Employee> sayHello() {
		System.out.println("------------Using Rest Template-------");
		return employeeService.getEmployees();
	}
	
	
	
}
