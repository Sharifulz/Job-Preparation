package com.exam.collection;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class CollectionInterface {

	public static void main(String[] args) {
		List<Integer> list = Arrays.asList(1,15,4,3,2,9);
		List<Integer> aList = list.stream().collect(Collectors.toCollection(ArrayList::new));
		Collections.reverse(aList);
		aList.forEach(data->System.out.print(data+" , "));
		System.out.println();
		//list.forEach(data2->System.out.print(data2+" , "));
		list.forEach(System.out::print);
	}

}
