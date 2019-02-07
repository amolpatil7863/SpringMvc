package com.spring.mvc.dao;

import java.util.List;

import com.spring.mvc.model.Employee;

public interface EmployeeDao {
	public void saveEmployee(Employee employee);
    public Employee getEmployeeById(int id);
    public void updateEmployee(Employee employee);
    public void deleteEmployee(int id);
    public List<Employee> getAllEmployees();
}
