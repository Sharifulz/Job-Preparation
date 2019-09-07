package com.exam.iteration;

import java.util.Arrays;
import java.util.List;

import com.exam.lambda.PracticeLambda;

public class IterationForloop {
	public static void main(String[] args) {
		List<Person> person = Arrays.asList(
				new Person("name1", "email1"),
				new Person("name2", "email2"),
				new Person("name3", "email3")
				);
		System.out.println("Print Using for loop -----------------------------");
		for (int i = 0; i < person.size(); i++) {
			System.out.println(person.get(i).toString());
		}
		System.out.println("Print Using foreach loop-----------------------------");
		for (Person p : person) {
			System.out.println(p.toString());
		}
		System.out.println("Print Using Lambda Expression----------------------------");
		person.forEach(p->System.out.println(p));
	}
}

class Person{
	String name;
	String email;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Person(String name, String email) {
		this.name = name;
		this.email = email;
	}
	@Override
	public String toString() {
		return "Person [name=" + name + ", email=" + email + "]";
	}
	
}
