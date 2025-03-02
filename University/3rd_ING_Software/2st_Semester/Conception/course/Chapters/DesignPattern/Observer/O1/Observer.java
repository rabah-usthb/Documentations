public abstract class Observer {
   
   private String name;
	
   public Observer(String name) {
	   this.name = name;
   }
   
   public abstract void update(String state);

   public void setName(String name) {
	   this.name = name;
   }
   
   public String getName() {
	   return this.name;
   }
   
}
