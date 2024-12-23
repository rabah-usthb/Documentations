public class Main {

	public static void main(String[] args) {
		Composite com = new Composite();
		
		Leaf l1 = new Leaf();
		Leaf l2 = new Leaf();
		Leaf l3 = new Leaf();
		Leaf l4 = new Leaf();
		Leaf l5 = new Leaf();
		
		com.add(l1);
		com.add(l2);

		Composite comInner1 = new Composite();
		comInner1.add(l3);
		
		Composite comInner2 = new Composite();
		comInner2.add(l4);
		comInner2.add(l5);
		
		comInner1.add(comInner2);
		
		com.add(comInner1);
		
		for (Element element : com.getElementList()) {
			element.operation();
		}
		
		System.out.println("\n");
		
		com.printTree(0,com.getElementList());

	}

}
