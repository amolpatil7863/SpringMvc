package com.programcreek.helloworld.controller;

import org.springframework.beans.factory.annotation.Autowired;

public class Employee {
	
	@Autowired
	private Address address;

	public void setAddress(Address bean_address) {
		this.address = bean_address;
	}

	public void show() {
		System.out.println("-----------------"+this.address);
	}

	@Override
	public String toString() {
		return "Employee [address=" + address + "]";
	}

	
}
