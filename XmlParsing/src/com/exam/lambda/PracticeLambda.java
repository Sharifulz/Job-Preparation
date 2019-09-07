package com.exam.lambda;

public class PracticeLambda {

	public static void main(String[] args) {
		//Thread t = new Thread(()->speak());
		Thread t = new Thread(PracticeLambda::speak);
		t.start();
		
	}
	public static void speak() {
		System.out.println("Speaking");
	}
}
