import java.util.LinkedList;
import java.util.List;

public class Composite extends Element {
private List<Element> elementList = new LinkedList<>();

 @Override
 public void operation() {
	System.out.println("Composite Operation");
 }
 
 public void add(Element element) {
	 this.elementList.add(element);
 }
 
 public void delete(Element element) {
	 this.elementList.remove(element);
 }
 
 public List<Element> getElementList(){
	 return this.elementList;
 }
 
 public void printTree(int deepness,List<Element> elementList) {
   for(Element element : elementList) {
	   if(element instanceof Leaf) {
		  System.out.println(" ".repeat(deepness)+"Leaf");
	   }
	   
	   else if(element instanceof Composite) {
		    ++deepness;
		    System.out.println(" ".repeat(deepness)+"Composite");
		    Composite com = (Composite)element;
		    printTree(deepness+1,com.elementList);
	   }
   }
 } 
}
