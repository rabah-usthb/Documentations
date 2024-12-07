public class Employee {

String firstName;
String lastName;
int ID;
Employee Manager;

public Employee(String firstName , String lastName , int ID , Employee Manager) {
	this.firstName = firstName;
	this.lastName = lastName;
	this.ID = ID;
	this.Manager = Manager;
}

}
