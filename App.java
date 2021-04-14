package com.tyss.assignment;

import java.util.Scanner;

import com.tyss.assignment.factory.Factory;

public class App {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int iterate;
		do {
			System.out.println("Take this programming quiz challenge!!");
			System.out.println("Enter 1 to Register");
			System.out.println("Enter 2 to Login");
			int option = scanner.nextInt();
			Factory factory = new Factory();
			if (option == 1) {
				factory.register();
			}
			if (option == 2) {
				factory.login();
			}
			System.out.println("Enter 1 to Login/Register again");
			System.out.println("Enter 2 for exit");
			iterate = scanner.nextInt();
		} while (iterate == 1);
		scanner.close();
		
	}//End of the Main Method

}//End of the Class
