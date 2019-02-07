package com.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mvc.dao.EmployeeDao;
import com.spring.mvc.model.Employee;
@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	public void saveEmployee(Employee employee) {
		System.out.println("emp service"+employee);
		employeeDao.saveEmployee(employee);
	}

}
