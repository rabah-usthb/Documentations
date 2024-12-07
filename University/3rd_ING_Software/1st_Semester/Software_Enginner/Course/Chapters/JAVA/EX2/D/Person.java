import java.util.LinkedHashSet;
import java.util.Set;

public class Person {
String firstName; 
String lastName;
String address;
Set<WorkFor> workingList = new LinkedHashSet<>();

public Person (String firstName,String lastName,String address) {
	this.firstName = firstName;
	this.lastName = lastName;
	this.address = address;
}

public void printEmploye(int organizationID) {
	for (WorkFor work : workingList) {
		if(work.organization.ID == organizationID) {
			System.out.println("First Name "+this.firstName);
			System.out.println("Last Name "+this.lastName);
			System.out.println("Address"+this.address);
			System.out.println("Salary : "+work.salary);
			System.out.println("Hiring Date "+work.hiringDate);
			break;
		}
	}}
}
