package com.spring.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.mvc.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	List<Employee> list = new ArrayList<Employee>();

	public Employee addEmployee(Employee employee) {
		list.add(employee);
		return employee;
	}

	public List<Employee> getEmployees() {
		return list;
	}
	
	public Employee getEmployee(int id) {
		for (Employee employee : list) {
			if(employee.getId()==id) {
				return employee;
			}
		}
		return null;
	}
}
