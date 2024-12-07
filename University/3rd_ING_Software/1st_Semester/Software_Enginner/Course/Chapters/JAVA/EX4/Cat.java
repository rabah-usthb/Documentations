public class Cat extends Animal {
private String name;

 public Cat(String name) {
		super(name);
		System.out.println("Cat Was Created");
 }
	
  @Override
 public void sound() {	System.out.println(this.name+"is meowing");	}
}
