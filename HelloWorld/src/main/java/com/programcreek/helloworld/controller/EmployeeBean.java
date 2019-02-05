package com.programcreek.helloworld.controller;

public class EmployeeBean
{
	private String fullName;
    private DepartmentBean departmentBean;
 
    public EmployeeBean() {
		super();
	}

	public DepartmentBean getDepartmentBean() {
        return departmentBean;
    }
 
    public void setDepartmentBean(DepartmentBean departmentBean) {
        this.departmentBean = departmentBean;
    }
 
    public String getFullName() {
        return fullName;
    }
 
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
	@Override
	public String toString() {
		return "EmployeeBean [fullName=" + fullName + ", departmentBean=" + departmentBean + ", getDepartmentBean()="
				+ getDepartmentBean() + ", getFullName()=" + getFullName() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
    
}