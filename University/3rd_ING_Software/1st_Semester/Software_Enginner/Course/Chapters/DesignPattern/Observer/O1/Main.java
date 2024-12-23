public class Main {
    public static void main(String[] args) {
       
        concretSubject subject = new concretSubject();

        Observer observer1 = new concretObserver("Alice");
        Observer observer2 = new concretObserver("Bob");     

        subject.add(observer1);
        subject.add(observer2);

        subject.setState("State 1");

        subject.delete(observer1);

        subject.setState("State 2");
    }
}