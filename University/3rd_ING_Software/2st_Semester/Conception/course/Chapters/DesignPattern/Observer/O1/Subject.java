import java.util.LinkedList;
import java.util.List;

public abstract class Subject {

	private List<Observer> observerList = new LinkedList<>();
	
	public abstract void add(Observer observer);
	public abstract void delete(Observer observer);
	public abstract void notifyObservers();
	
	public List<Observer> getObserverList() {
	  return this.observerList;
	}
	
}
