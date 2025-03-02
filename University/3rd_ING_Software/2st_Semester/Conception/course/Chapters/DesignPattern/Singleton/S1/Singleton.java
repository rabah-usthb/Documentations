public class Singleton {
  private static Singleton instance = null;
  
  private Singleton() {
	  System.out.println("Instance Of Singleton");
  }
  
  public static Singleton getInstance() {
	  
	  if(instance == null) {
		  instance = new Singleton();
	  }
	  
	  return instance;
  }
	
}
