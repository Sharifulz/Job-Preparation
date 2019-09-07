package com.exam.thread;

import java.util.Random;

public class RandomNumber {

	public static void main(String[] args) {
		Thread t = new Thread(RandomNumber::printRandom);
		t.start();
	}
	public static void printRandom() {
		Random random = new Random();
		float num;
		for (int i = 0; i < 5; i++) {
			num = 1+ random.nextFloat();
			System.out.println(num);
		}
	}

}
