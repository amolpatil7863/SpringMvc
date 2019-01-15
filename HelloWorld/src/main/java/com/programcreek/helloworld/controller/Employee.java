package com.programcreek.helloworld.controller;

public class Employee {
	
	private Address address;

	public void setAddress(Address bean_address) {
		this.address = bean_address;
	}

	public void show() {
		System.out.println("-----------------"+this.address);
	}

	public static void main(String dfj[]) {
		System.out.println("Employee class");
		Employee emp=new Employee();
		emp.show();
	}
}
