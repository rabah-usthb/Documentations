public class concretObserver extends Observer{

	private concretSubject sub;
	
	public concretObserver(String name,concretSubject sub) {
		super(name);
		this.sub = sub;
	}

	@Override
	public void update() {
		String state= checkState();
		System.out.println("Observer "+this.getName()+" New State : "+state);
	    
    }

    public String checkState() {
    	return sub.getState(); 
    }

}
