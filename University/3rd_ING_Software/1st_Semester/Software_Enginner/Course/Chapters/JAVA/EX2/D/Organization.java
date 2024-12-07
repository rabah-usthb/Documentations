import java.util.HashMap;
import java.util.Map;

public class Organization {
int ID;
String name;
String address;
Map<Integer,Person> employeList = new HashMap<>();

public Organization(int ID,String name , String address) {
	this.ID = ID;
	this.name = name;
	this.address = address;
}

public boolean addEmployee(int empID, Person employe) {
    if (!employeList.containsKey(empID)) {
        employeList.put(empID, employe);
        return true;
    } else {
        System.out.println("Employee with ID " + empID + " already exists.");
        return false;
    }
}

public boolean removeEmployee(int empID) {
    if (!employeList.containsKey(empID)) {
    	 System.out.println("Employee with ID " + empID + " doesn't exists.");
         return false;
    } else {
        this.employeList.remove(empID);
        return true;
    }
}


public void searchEmploye(int empID) {
    Person employee = employeList.get(empID); 

    if (employee != null) {
        employee.printEmploye(this.ID);  
    } else {
        System.out.println("Employee Not Found");
    }
}



}
