package com.programcreek.helloworld.controller;

import org.springframework.stereotype.Component;

@Component
public class Address {

	private String name;
	private String city;
	public Address() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "Address [name=" + name + ", city=" + city + "]";
	}
	
	
}
