public class Pilot {

    private static volatile Pilot instance = null;
    private int card;

    private Pilot(int card) {
       this.card = card;
       System.out.println("Pilot Instance");
    }

    public static Pilot getInstance() {
     
        Pilot result = instance; 
        
        if (result == null) {
            
            synchronized(Pilot.class) {
            result = instance;

            if (result == null) {
                instance = result = new Pilot(100);
            }

            }
        }

        return result;
    }


}
