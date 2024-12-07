public class Teacher {
    
	String name;
    int ID;

    public Teacher(String name,int ID) {
        this.name = name;
        this.ID = ID;
    }

    public void teach() {
        System.out.println(name + " is teaching.");
    }
}


