import java.util.Scanner;

import javax.naming.Context;

public class Main {

	public static void main(String[] args) {
		Context con = new Context();
		Scanner sc = new Scanner(System.in);
		
		int choice = -1;
		
		while(choice!=0) {
		System.out.println("Press 1 For Strategy 1\nPress 2 For Strategy 2\nPress 3 For Strategy n\nPress 0 to Quit");
		choice = sc.nextInt(); 
		if(choice!=0) {
			 con.Launch(choice);
		 }
		}

	}

}
