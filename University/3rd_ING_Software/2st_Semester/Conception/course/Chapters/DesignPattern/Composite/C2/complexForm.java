import java.util.LinkedList;
import java.util.List;

public class complexForm extends GeoForm {
	private List<GeoForm> formList = new LinkedList<>();

	 @Override
	 public void draw() {
		System.out.println("Draw Complexe Form");
	 }
	 
	 public void add(GeoForm form) {
		 this.formList.add(form);
	 }
	 
	 public void delete(GeoForm form) {
		 this.formList.remove(form);
	 }
	 
	 public List<GeoForm> getFormList(){
		 return this.formList;
	 }
	 
	 public void printTree(int deepness,List<GeoForm> formList) {
	   for(GeoForm form : formList) {
		   if(form instanceof simpleForm) {
			  simpleForm sim = (simpleForm)form;
			  System.out.println(" ".repeat(deepness)+sim.getType());
		   }
		   
		   else if(form instanceof complexForm) {
			    ++deepness;
			    System.out.println(" ".repeat(deepness)+"Complex");
			    complexForm com = (complexForm)form;
			    printTree(deepness+1,com.formList);
		   }
	   }
	 }
	 
	}
