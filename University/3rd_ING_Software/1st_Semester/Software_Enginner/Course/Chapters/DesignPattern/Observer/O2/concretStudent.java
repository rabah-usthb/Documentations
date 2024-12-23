public class concretStudent extends Student {

	public concretStudent(String name) {
		super(name);
		
	}

	@Override
	public void update(String activity) {
		System.out.println("Student "+getName()+" changed activity to "+activity);
	}

}
