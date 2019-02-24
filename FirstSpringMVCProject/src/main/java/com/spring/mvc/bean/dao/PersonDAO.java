package com.spring.mvc.bean.dao;

import java.util.List;
import com.spring.mvc.model.Person;


public interface PersonDAO {

	public void save(Person p);
	public List<Person> list();
	
}

