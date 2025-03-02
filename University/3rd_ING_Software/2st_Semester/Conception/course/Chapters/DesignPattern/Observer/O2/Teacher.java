import java.util.LinkedList;
import java.util.List;

public abstract class Teacher {
private List<Student> studentList = new LinkedList<>();
	
	public abstract void add(Student student);
	public abstract void delete(Student student);
	public abstract void notifyStudents();
	
	public List<Student> getStudentList() {
	  return this.studentList;
	}
}
