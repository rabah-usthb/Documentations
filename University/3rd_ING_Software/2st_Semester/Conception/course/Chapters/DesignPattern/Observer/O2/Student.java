public abstract class Student {
  private String name;
  
  public Student(String name) {
	  this.name = name;
  }
  
  public abstract void update(String activity);
  
  public void setName(String name) {
	   this.name = name;
  }
  
  public String getName() {
	   return this.name;
  }
}
