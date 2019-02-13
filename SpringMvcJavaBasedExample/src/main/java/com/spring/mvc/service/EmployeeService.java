package com.spring.mvc.service;

import java.util.List;

import com.spring.mvc.model.Employee;

public interface EmployeeService {
//	public void saveEmployee(Employee employees);
	public Employee addEmployee(Employee employee);
	public List<Employee> getEmployees();
	public Employee getEmployee(int id);
}
