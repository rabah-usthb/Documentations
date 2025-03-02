import java.lang.reflect.Constructor;

public class ReflectionSingletonTest {

    public static void main(String[] args) {
        Singleton instanceOne = Singleton.getInstance();
        Singleton instanceTwo = null;
        try {
            Constructor[] constructors = Singleton.class.getDeclaredConstructors(); //fetch constructors of Singleton Class
            for (Constructor constructor : constructors) {     // loop through array of constructor
                constructor.setAccessible(true);               // make constructor public
                instanceTwo = (Singleton) constructor.newInstance(); // create instance
                break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(instanceOne.hashCode());  //print reference of 1st instance
        System.out.println(instanceTwo.hashCode());  //print reference of 2nd instance
    }

}
