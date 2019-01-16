package com.programcreek.helloworld.controller;

public class DepartmentBean{
    private String name;
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
	@Override
	public String toString() {
		return "DepartmentBean [name=" + name + "]";
	}
    
}
