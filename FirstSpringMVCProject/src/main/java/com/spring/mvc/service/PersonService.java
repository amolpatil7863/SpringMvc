package com.spring.mvc.service;

import java.util.List;

import com.spring.mvc.dto.PersonDto;
import com.spring.mvc.model.Person;

public interface PersonService {
	public void save(PersonDto personDto) ;
	public List<Person> list();
}
