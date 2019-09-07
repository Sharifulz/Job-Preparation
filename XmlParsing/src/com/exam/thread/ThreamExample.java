package com.exam.thread;
class Hi extends Thread{
	public void show() throws InterruptedException {
		for (int i = 0; i<5; i++) {
			System.out.println("Hi");
			Thread.sleep(500);
		}
	}
	public void run(){
		for (int i = 0; i<5; i++) {
			System.out.println("Hi");
			try {Thread.sleep(1000);} catch (InterruptedException e) {e.printStackTrace();
			}
		}
	}
}
class Hellow extends Thread{
	public void show() {
		for (int i = 0; i<5; i++) {
			System.out.println("Hellow");
		}
	}
	public void run() {
		for (int i = 0; i<5; i++) {
			System.out.println("Hellow");
			try {Thread.sleep(1000);} catch (InterruptedException e) {e.printStackTrace();}
	}
}
}

public class ThreamExample {
	public static void main(String[] args) {
		Hi obj1 = new Hi();
		Hellow obj2 = new Hellow();
		obj1.start();
		try {Thread.sleep(10);} catch (InterruptedException e) {e.printStackTrace();}
		obj2.start();
	}
}
