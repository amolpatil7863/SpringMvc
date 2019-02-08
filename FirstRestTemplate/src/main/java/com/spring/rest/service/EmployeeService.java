package com.spring.rest.service;

import java.util.List;

import com.sping.rest.model.Employee;

public interface EmployeeService {
	public Employee addEmployee(Employee employee);
	public List<Employee> getEmployee();
	public List<Employee> getEmployees();

}
