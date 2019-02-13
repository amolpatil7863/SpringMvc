package com.spring.mvc.exception;

public class EmployeeExcepion extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5535010987581001373L;

	private String exceptionMsg;

	public EmployeeExcepion() {
		super();
	}

	

	public EmployeeExcepion(String exceptionMsg) {
		super();
		this.exceptionMsg = exceptionMsg;
	}



	public String getExceptionMsg() {
		return this.exceptionMsg;
	}

	public void setExceptionMsg(String exceptionMsg) {
		this.exceptionMsg = exceptionMsg;
	}

}
