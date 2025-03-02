public class Singleton {
  private static volatile Singleton instance = null;
 
  
  private Singleton() {
	  System.out.println("Instance Of Singleton");
  }
  
  public static Singleton getInstance() {
	  Singleton result = instance;
	  
	  if(result == null) {
	  
	  synchronized (Singleton.class) {
		  result  = instance;
		  if(result == null) {
			  instance = result = new Singleton();
		  }
	}
	  
    }
	  
	  return result;
  }
	
}
