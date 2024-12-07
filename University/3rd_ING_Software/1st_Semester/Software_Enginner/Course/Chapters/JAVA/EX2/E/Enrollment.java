import java.util.LinkedHashSet;
import java.util.Set;

public class Enrollment {
Set<Student> studentList = new LinkedHashSet<>();
Set<Instructor> instructorList = new LinkedHashSet<>();
Course course;
int hour;
String classRoom;

public Enrollment(Set<Student>stdList,Set<Instructor> instList,Course course,int hour,String classRoom) {
	if(stdList == null || stdList.isEmpty()) {
		throw new IllegalArgumentException("Error Can't Course With 0 Students");
	}
	else if(instList == null || instList.isEmpty()) {
		throw new IllegalArgumentException("Error Can't Course With 0 Teachers");
	}
	this.studentList = stdList;
	this.instructorList = instList;
	this.course = course;
	this.hour = hour;
	this.classRoom = classRoom;
}

}
