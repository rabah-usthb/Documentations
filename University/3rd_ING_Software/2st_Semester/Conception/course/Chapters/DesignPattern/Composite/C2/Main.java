public class Main {

	public static void main(String[] args) {
		simpleForm sim1 = new simpleForm("line");
		simpleForm sim2 = new simpleForm("circle");
		simpleForm sim3 = new simpleForm("square");
		simpleForm sim4 = new simpleForm("triangle");

		complexForm com = new complexForm();
		com.add(sim1);
		com.add(sim4);
		
		complexForm comInner2 = new complexForm();
		comInner2.add(sim1);
		comInner2.add(sim1);
		
		complexForm comInner1 = new complexForm();
		comInner1.add(sim3);
		comInner1.add(sim2);
		
		comInner1.add(comInner2);
		
		com.add(comInner1);
		
		for (GeoForm form : com.getFormList()) {
			form.draw();
		}
		
		System.out.println("\n");
		
		com.printTree(0,com.getFormList());

		
		
	}

}
