public class Main {

	public static void main(String[] args) {
		    concretTeacher teacher = new concretTeacher();
	       
	        Student st1 = new concretStudent("Zaki");
	        Student st2 = new concretStudent("Rabah");
	     
	        teacher.add(st1);
	        teacher.add(st2);

	  
	        teacher.setActivity("DW 2 EX1");

	        teacher.delete(st2);
     
	        teacher.setActivity("LAB2");
	}
}
