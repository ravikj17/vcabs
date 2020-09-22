package com.ravi.service;

public class Service {

	public double fare(double distance, String plan) {

		if (plan.equals("Bike")) {
			return distance * 5;
		}
		if (plan.equals("Simple")) {
			return distance * 10;
		}
		return distance * 20;

	}

}
