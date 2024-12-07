import java.util.Date;

public class WorkFor {
Organization organization;
Person employe;
double salary;
Date hiringDate;
int empID;


public WorkFor(int empID,Organization organization,Person employe,float salary,Date hiringDate) {
	this.empID = empID;
	this.organization = organization;
	this.employe = employe;
	this.salary = salary;
	this.hiringDate = hiringDate;
	if(organization.addEmployee(empID, employe)) {
		employe.workingList.add(this);
	}
}

}
