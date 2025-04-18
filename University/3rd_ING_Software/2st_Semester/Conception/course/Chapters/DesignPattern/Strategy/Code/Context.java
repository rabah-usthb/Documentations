public class Context {
 private Strategy s;
 
 public void Launch(int Case) {
	 switch(Case) {
	 	case 1:
	 		s = new Behaviour_1();
	 	    break;
	 	case 2:
	 		s = new Behaviour_2();
	 		break;
	 	case 3:
	 		s = new Behaviour_n();
	 		break;
	 		
	 }
	 s.execute();
 }
}
