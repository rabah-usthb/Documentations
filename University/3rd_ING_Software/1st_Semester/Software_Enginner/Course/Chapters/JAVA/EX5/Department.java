import java.util.LinkedHashSet;
import java.util.Set;

public class Department {
    String deptName;
    Set<Teacher> teachers = new LinkedHashSet<>();

    public Department(String deptName, Set<Teacher> teachers) {
        this.deptName = deptName;
        this.teachers = teachers;
    }

    public void showTeachers() {
        System.out.println("Teachers in " + deptName + " department:");
        for (Teacher teacher : teachers) {
            System.out.println("- "+teacher.ID+ " " + teacher.name);
        }
    }
}
