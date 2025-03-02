public class concretTeacher extends Teacher{

	private String activity;
	
	@Override
	public void add(Student student) {
	  getStudentList().add(student);
	}

	@Override
	public void delete(Student student) {
	  getStudentList().remove(student);
	}

	@Override
	public void notifyStudents() {
		for(Student student : getStudentList()) {
			student.update(this.activity);
		}
	}
	
	public String getActivity() {
		return this.activity;
	}
	
	public void setActivity(String activity) {
        this.activity = activity;
        System.out.println("Teacher Setting Activity To "+activity);
        notifyStudents(); 
    }


}
