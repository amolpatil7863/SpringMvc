package com.programcreek.helloworld.controller;

import org.springframework.beans.factory.annotation.Autowired;

public class Customer {
	
	private Person person;
	private int type;
	private String action;

	@Autowired(required=true)
	public void setPerson(Person person) {
		this.person = person;
	}

//	@Autowired
	public Customer() {
		super();
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Person getPerson() {
		return person;
	}

	@Override
	public String toString() {
		return "Customer [person=" + person + ", type=" + type + ", action=" + action + "]";
	}
	
	
}
