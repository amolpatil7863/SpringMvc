package com.programcreek.helloworld.controller;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

public class HelloSpring {
	private String name;
	private int id;
		
	
	public HelloSpring() {
		super();
		System.out.println("Initiasing HelloSpring bean class");
			}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@PostConstruct
	public void init(){
		System.out.println("init method called");
	}
	
	@PreDestroy
	public void destroy(){
		System.out.println("destroy method called");
	}

	@Override
	public String toString() {
		System.out.println("ToString ");
		return "HelloSpring [name=" + name + ", id=" + id + "]";
	}
}
