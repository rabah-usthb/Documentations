public class concretObserver extends Observer{

	public concretObserver(String name) {
		super(name);
	}

	@Override
	public void update(String state) {
		System.out.println("Observer "+this.getName()+" New State : "+state);
	}

}
