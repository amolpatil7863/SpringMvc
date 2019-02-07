package co.springcore.AutoWiredExample;

import org.springframework.stereotype.Component;

@Component
public class Student {
	private Integer age;
	private String name;

	public Student() {
		super();
		System.out.println("Initializing Student class onstructor");
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getAge() {
		return age;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		return "Student [age=" + age + ", name=" + name + "]";
	}
	
}
