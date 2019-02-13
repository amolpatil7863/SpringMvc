package com.spring.mvc.restcontroller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.spring.mvc.model.Employee;
import com.spring.mvc.service.EmployeeService;



@RestController
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping(value = "/addemp", method = RequestMethod.POST)
	public Employee addEmployee(@RequestBody Employee employee,@RequestHeader Map<String,String> headers) {
		employeeService.addEmployee(employee);
		for (String elem: headers.keySet()) {
			      System.out.println(elem + " : " + headers.get(elem));
			    }
		return employee;
	}

	@RequestMapping(value = "/getemployeelist", method = RequestMethod.GET)
	public List<Employee> sayHello() {
		System.out.println("-------------------");
		return employeeService.getEmployees();
	}

	@RequestMapping(value = "/getemployee/{id}", method = RequestMethod.GET)
	public @ResponseBody Employee getEmployee(@PathVariable String id) {
		
	     return	employeeService.getEmployee(Integer.parseInt(id));
	}
}
