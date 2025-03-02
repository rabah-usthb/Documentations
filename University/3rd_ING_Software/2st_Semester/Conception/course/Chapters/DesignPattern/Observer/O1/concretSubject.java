public class concretSubject extends Subject {

	private String state;
	
	@Override
	public void add(Observer observer) {
		this.getObserverList().add(observer);
		
	}

	@Override
	public void delete(Observer observer) {
		this.getObserverList().remove(observer);
	}

	@Override
	public void notifyObservers() {
		for(Observer obs : getObserverList()) {
			obs.update(this.state);
		}
	}
	
	public String getState() {
		return this.state;
	}
	
	public void setState(String state) {
        this.state = state;
        System.out.println("Setting state to "+state);
        notifyObservers(); 
    }

}
