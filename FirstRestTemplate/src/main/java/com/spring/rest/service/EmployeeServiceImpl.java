package com.spring.rest.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.sping.rest.model.Employee;

@Component
public class EmployeeServiceImpl implements EmployeeService {
	List<Employee> list = new ArrayList<Employee>();
	Employee emp=null;
	public Employee addEmployee(Employee employee) {

		list.add(employee);
		emp=employee;
		return employee;
	}

	public List<Employee> getEmployee() {
		
		return list;
	}

	public List<Employee> getEmployees() {
		RestTemplate restTemplate = new RestTemplate();
		try{
		/*ResponseEntity<List<Employee>> response = restTemplate.exchange("http://localhost:8080/FirstRestTemplate/getemp",
				  HttpMethod.GET,
				  null,
				  new ParameterizedTypeReference<List<Employee>>(){});*/
			ArrayList<Employee> empdata=restTemplate.getForObject("http://localhost:8080/FirstRestTemplate/getemp", (Class<? extends ArrayList<Employee>>)ArrayList.class);
		System.out.println("EmpData:-"+empdata.size());
		}catch(HttpMessageNotReadableException e){
			throw new RuntimeException(e.getMessage());
		}
		catch (RestClientException e) {
			throw new RuntimeException(e.getMessage());
		}
		return list;
	}

}
