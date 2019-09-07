package com.exam.thread;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class TimeClock {

	public static void main(String[] args) throws InterruptedException {
		boolean timer = true;
		while(timer) {
			Thread t = new Thread(()->timeNow());
			t.sleep(1000);
			t.start();
		}

	}

	public static void timeNow() {
		TimeZone.setDefault(TimeZone.getTimeZone("GMT+6"));
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy E hh:mm:ss a");
		Date date = new Date();
		String currentTime = format.format(date);
		System.out.println(currentTime);
	}
}
